class WeibullController < ApplicationController
  def weibull_select
	@bushing  = ManufacturerBushing.get_bushing()
	@numBushing = @bushing.count
	if @numBushing==0
		@bushing  = ManufacturerBushing.new
	end
	@arrester = ManufacturerArrester.get_arrester()
	@numArrester = @arrester.count
	if @numArrester==0
		@arrester = ManufacturerArrester.new
	end
	@oltc = ManufacturerOltc.get_oltc()
	@numOltc = @oltc.count
	if @numOltc==0
		@oltc = ManufacturerOltc.new
	end

        @bushingtype = Array.new();
        for i in 0..@numBushing-1 do
          @bushingtype[i] = Transformer.get_bushing_type(@bushing[i].id)
        end

        @arrestertype = Array.new();
        for i in 0..@numArrester-1 do
          @arrestertype[i] = Transformer.get_arrester_type(@arrester[i].id)
        end

        @oltctype = Array.new();
        for i in 0..@numOltc-1 do
          @oltctype[i] = Transformer.get_oltc_type(@oltc[i].id)
        end
  end

  def factorial(n)
	fac = 1
	for i in 1..n do
		fac = fac * i
	end
	return fac
  end

  def weibull_calculation
	@equipement = params[:select_manufacturer]
	@voltage = params[:voltage]
	@manufacturer = params[:manufacturer]
	@type = params[:type]
	@failuredetail = params[:failuredetail]
	@time_interval = params[:time_interval].to_i
	@lead_time = params[:lead_time].to_i

	if(@equipement == "Bushing") 
		@manu_name = ManufacturerBushing.get_bushing_id(@manufacturer).manufacturer
	elsif(@equipement == "Arrester")
		@manu_name = ManufacturerArrester.get_arrester_id(@manufacturer).manufacturer
	else
		@manu_name = ManufacturerOltc.get_oltc_id(@manufacturer).manufacturer
        end

	@age_weibull = Array.new
        @f_normal_weibull, @age_weibull = Transformer.calculate_f_normal_weibull(@equipement, @voltage, @manufacturer, @type, @failuredetail)

        @f_poisson = Transformer.calculate_f_poisson(@equipement, @voltage, @manufacturer, @type, @failuredetail, @time_interval)

	@service_year_m_normal_weibull = Transformer.calculate_service_year_normal(@equipement, @voltage, @manufacturer, @type)
	@service_year_normal_weibull = @service_year_m_normal_weibull[0].to_f
	@m_normal_weibull 	= @service_year_m_normal_weibull[1].to_f

	@service_year_m_poisson 	= Transformer.calculate_service_year_poisson(@equipement, @voltage, @manufacturer, @type, @time_interval)
	@service_year_poisson 	= @service_year_m_poisson[0].to_f
	@m_poisson 		= @service_year_m_poisson[1].to_f


	#Normal Distribution
	@lambda_normal_dist = @f_normal_weibull/@service_year_normal_weibull
	@spare_normal_dist  = @m_normal_weibull * ((@lambda_normal_dist * @lead_time) + Math.sqrt(@lambda_normal_dist * @lead_time * 2.33))

	#Poisson Distribution
	@lambda_poisson_dist = @f_poisson/@service_year_poisson
	a = @lambda_poisson_dist * @lead_time * @m_poisson

	@poisson_p = Array.new
	@poisson_reliability = Array.new

	for i in 0..15 do
		@poisson_p[i] = (((a ** i) *  Math.exp(-a))/factorial(i)) * 100
		@poisson_reliability[i] = 0.0
		for j in 0..i do
			@poisson_reliability[i] = @poisson_reliability[i] + @poisson_p[j]
		end	
	end

	@spare_poisson = 0
	for i in 0..15 do
		if @poisson_reliability[i] >= 99
			@spare_poisson = i
			break
		end
	end	
	
	#Weibull Distribution	
	@age_weibull.sort
      if @age_weibull.size >= 2
        n = @age_weibull.length
        @summation = Hash.new
        @summation["x"] = 0.0
        @summation["y"] = 0.0
        @summation["x2"] = 0.0
        @summation["y2"] = 0.0
        @summation["xy"] = 0.0


        @weibull_table = Array.new
        for i in 1..n do
                @weibull_table[i] = Hash.new
                @weibull_table[i]["rank_order"] = i
                @weibull_table[i]["T"] = @age_weibull[i-1]
                @weibull_table[i]["median"] = ((i - 0.3)/(n + 0.4))
                @weibull_table[i]["x"] = Math.log(@weibull_table[i]["T"])
                @weibull_table[i]["y"] = Math.log(Math.log(1.0/(1.0 - @weibull_table[i]["median"])))
                @weibull_table[i]["x2"] = @weibull_table[i]["x"] ** 2
                @weibull_table[i]["y2"] = @weibull_table[i]["y"] ** 2
                @weibull_table[i]["xy"] = @weibull_table[i]["x"] * @weibull_table[i]["y"]

                @summation["x"] = @summation["x"] + @weibull_table[i]["x"]
                @summation["y"] = @summation["y"] + @weibull_table[i]["y"]
                @summation["x2"] = @summation["x2"] + @weibull_table[i]["x2"]
                @summation["y2"] = @summation["y2"] + @weibull_table[i]["y2"]
                @summation["xy"] = @summation["xy"] + @weibull_table[i]["xy"]
        end

        @beta = (@summation["xy"] - ((@summation["x"] * @summation["y"])/n)) / (@summation["x2"] - ((@summation["x"]**2)/n))
        @c = (@summation["y"]/n) - (@beta * (@summation["x"]/n))
        @eta = Math.exp(-@c/@beta)
        @grammar = calculate_grammar(1 + (1.0/@beta))
        @mtbf = @eta * @grammar
     end
     
  end

  def calculate_grammar(x2)
	g_table = [	[1.00, 1.00000], [1.01, 0.99433], [1.02, 0.98884], [1.03, 0.98355], [1.04, 0.97844], 
			[1.05, 0.97350], [1.06, 0.96874], [1.07, 0.96415], [1.08, 0.95973], [1.09, 0.95546],
			[1.10, 0.95135], [1.11, 0.94740], [1.12, 0.94359], [1.13, 0.93993], [1.14, 0.93642],
			[1.15, 0.93304], [1.16, 0.92980], [1.17, 0.92670], [1.18, 0.92373], [1.19, 0.92089],


			[1.30, 0.89747], [1.31, 0.89600], [1.32, 0.89464], [1.33, 0.89338], [1.34, 0.89222],

			[1.50, 0.88623], [1.51, 0.88659], [1.52, 0.88704], [1.53, 0.88757], [1.54, 0.88818],
			[1.55, 0.88887], [1.56, 0.88964], [1.57, 0.89049], [1.58, 0.89142], [1.59, 0.89243]

		  ]

	for i in 0..g_table.size-1 do
		if x2 <= g_table[i][0]
			x3 = g_table[i][0]
			x1 = g_table[i-1][0]
			y3 = g_table[i][1]
			y1 = g_table[i-1][1]
		   return y1 + (((y3 - y1) * (x2 - x1))/(x3 - x1))
		end
	end
	return 0
  end

  def weibull_chart
	#if !params[:chart].nil?	
	#else 
	#   redirect_to('/weibull/weibull_detail',
	#end
	@equipement = params[:equipement]
	@voltage = params[:voltage]
	if(@equipement == "Bushing")
		@manufacturer = ManufacturerBushing.find_by_manufacturer(params[:manu]).id
	elsif(@equipement == "Arrester")
		@manufacturer = ManufacturerArrester.find_by_manufacturer(params[:manu]).id
	else
		@manufacturer = ManufacturerOltc.find_by_manufacturer(params[:manu]).id
	end
	@type = params[:etype]
	@failuredetail = params[:failuredetail]
	@time_interval = params[:time_interval].to_i
	@lead_time = params[:lead_time].to_i

	@age_weibull = Array.new
        @f_normal_weibull, @age_weibull = Transformer.calculate_f_normal_weibull(@equipement, @voltage, @manufacturer, @type, @failuredetail)
	@age_weibull.sort
     if @age_weibull.size >= 2
	n = @age_weibull.length
	@summation = Hash.new
	@summation["x"] = 0.0
	@summation["y"] = 0.0
	@summation["x2"] = 0.0
	@summation["y2"] = 0.0
	@summation["xy"] = 0.0


	@weibull_table = Array.new
	for i in 1..n do
		@weibull_table[i] = Hash.new
		@weibull_table[i]["rank_order"] = i
		@weibull_table[i]["T"] = @age_weibull[i-1]
		@weibull_table[i]["median"] = ((i - 0.3)/(n + 0.4))
		@weibull_table[i]["x"] = Math.log(@weibull_table[i]["T"])
		@weibull_table[i]["y"] = Math.log(Math.log(1.0/(1.0 - @weibull_table[i]["median"])))
		@weibull_table[i]["x2"] = @weibull_table[i]["x"] ** 2
		@weibull_table[i]["y2"] = @weibull_table[i]["y"] ** 2
		@weibull_table[i]["xy"] = @weibull_table[i]["x"] * @weibull_table[i]["y"]

		@summation["x"] = @summation["x"] + @weibull_table[i]["x"]
		@summation["y"] = @summation["y"] + @weibull_table[i]["y"]
		@summation["x2"] = @summation["x2"] + @weibull_table[i]["x2"]
		@summation["y2"] = @summation["y2"] + @weibull_table[i]["y2"]
		@summation["xy"] = @summation["xy"] + @weibull_table[i]["xy"]
	end

	@beta = (@summation["xy"] - ((@summation["x"] * @summation["y"])/n)) / (@summation["x2"] - ((@summation["x"]**2)/n))
	@c = (@summation["y"]/n) - (@beta * (@summation["x"]/n))
	@eta = Math.exp(-@c/@beta)
	@grammar = calculate_grammar(1 + (1.0/@beta))
	@mtbf = @eta * @grammar
   end

  end

  def weibull_detail
  end

end
