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
        @allbushingtype = Transformer.get_all_bushing_type()

        @arrestertype = Array.new();
        for i in 0..@numArrester-1 do
          @arrestertype[i] = Transformer.get_arrester_type(@arrester[i].id)
        end
        @allarrestertype = Transformer.get_all_arrester_type()

        @oltctype = Array.new();
        for i in 0..@numOltc-1 do
          @oltctype[i] = Transformer.get_oltc_type(@oltc[i].id)
        end
        @alloltctype = Transformer.get_all_oltc_type()

	@fdfunction = FdFunction.get_function()
	@num_fdfunction = @fdfunction.count
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




	if @manufacturer == '-- All --'
		@manu_name = "-- All --"
	else
		if(@equipement == "Bushing") 
			@manu_name = ManufacturerBushing.get_bushing_id(@manufacturer).manufacturer
		elsif(@equipement == "Arrester")
			@manu_name = ManufacturerArrester.get_arrester_id(@manufacturer).manufacturer
		else
			@manu_name = ManufacturerOltc.get_oltc_id(@manufacturer).manufacturer
        	end
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
	@age_weibull = @age_weibull.sort
      if @age_weibull.size >= 2
        n = @age_weibull.length
        @summation = Hash.new
	@summation["T"] = 0.0
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

                @summation["T"] = @summation["T"] + @weibull_table[i]["T"]
                @summation["x"] = @summation["x"] + @weibull_table[i]["x"]
                @summation["y"] = @summation["y"] + @weibull_table[i]["y"]
                @summation["x2"] = @summation["x2"] + @weibull_table[i]["x2"]
                @summation["y2"] = @summation["y2"] + @weibull_table[i]["y2"]
                @summation["xy"] = @summation["xy"] + @weibull_table[i]["xy"]
        end

        @beta = (@summation["xy"] - ((@summation["x"] * @summation["y"])/n)) / (@summation["x2"] - ((@summation["x"]**2)/n))

	if @beta > 6
		@rt = Array.new
		@lambda = Array.new

		@mtbf = @summation["T"]/n
		@delta = 0.0
		for i in 1..n do
			@delta = @delta + ((@weibull_table[i]["T"] - @mtbf)**2)
		end
		@delta = Math.sqrt(@delta / (n - 1))

		for t in 1..100 do
			z = (t - @mtbf)/@delta
			temp_rt = 1 - Statistics2.normaldist(z)
			if temp_rt <= 0.0001
				break
			end
			@rt[t] = temp_rt
			ft = (1/(@delta * (Math.sqrt(2 * Math::PI)))) * Math.exp(-0.5 * (z ** 2))
			@lambda[t] = ft/@rt[t]
		end
	else
        	@c = (@summation["y"]/n) - (@beta * (@summation["x"]/n))
        	@eta = Math.exp(-@c/@beta)
        	@grammar = calculate_grammar(1 + (1.0/@beta))
        	@mtbf = @eta * @grammar
	end
     end
     
  end

  def calculate_grammar(x2)
	g_table = [	[1.00, 1.00000], [1.01, 0.99433], [1.02, 0.98884], [1.03, 0.98355], [1.04, 0.97844], 
			[1.05, 0.97350], [1.06, 0.96874], [1.07, 0.96415], [1.08, 0.95973], [1.09, 0.95546],
			[1.10, 0.95135], [1.11, 0.94740], [1.12, 0.94359], [1.13, 0.93993], [1.14, 0.93642],
			[1.15, 0.93304], [1.16, 0.92980], [1.17, 0.92670], [1.18, 0.92373], [1.19, 0.92089],
			[1.20, 0.91817], [1.21, 0.91558], [1.22, 0.91311], [1.23, 0.91075], [1.24, 0.90852],
			[1.25, 0.90640], [1.26, 0.90440], [1.27, 0.90250], [1.28, 0.90072], [1.29, 0.89904],
			[1.30, 0.89747], [1.31, 0.89600], [1.32, 0.89464], [1.33, 0.89338], [1.34, 0.89222],
			[1.35, 0.89115], [1.36, 0.89018], [1.37, 0.88931], [1.38, 0.88854], [1.39, 0.88785],
			[1.40, 0.88726], [1.41, 0.88676], [1.42, 0.88636], [1.43, 0.88604], [1.44, 0.88581],
			[1.45, 0.88566], [1.46, 0.88560], [1.47, 0.88563], [1.48, 0.88575], [1.49, 0.88595],
			[1.50, 0.88623], [1.51, 0.88659], [1.52, 0.88704], [1.53, 0.88757], [1.54, 0.88818],
			[1.55, 0.88887], [1.56, 0.88964], [1.57, 0.89049], [1.58, 0.89142], [1.59, 0.89243],
			[1.60, 0.89352], [1.61, 0.89468], [1.62, 0.89592], [1.63, 0.89724], [1.64, 0.89864],
			[1.65, 0.90012], [1.66, 0.90167], [1.67, 0.90330], [1.68, 0.90500], [1.69, 0.90678],
			[1.70, 0.90864], [1.71, 0.91057], [1.72, 0.91258], [1.73, 0.91467], [1.74, 0.91683],
			[1.75, 0.91906], [1.76, 0.92137], [1.77, 0.92376], [1.78, 0.92623], [1.79, 0.92877],
			[1.80, 0.93138], [1.81, 0.93408], [1.82, 0.93685], [1.83, 0.93969], [1.84, 0.94261],
			[1.85, 0.94561], [1.86, 0.94869], [1.87, 0.95184], [1.88, 0.95507], [1.89, 0.95838],
			[1.90, 0.96177], [1.91, 0.96523], [1.92, 0.96877], [1.93, 0.97240], [1.94, 0.97610],
			[1.95, 0.97988], [1.96, 0.98374], [1.97, 0.98768], [1.98, 0.99171], [1.99, 0.99581]
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
	if params[:manu] == '-- All --'
		@manufacturer = "-- All --"
        else
		if(@equipement == "Bushing")
			@manufacturer = ManufacturerBushing.find_by_manufacturer(params[:manu]).id
		elsif(@equipement == "Arrester")
			@manufacturer = ManufacturerArrester.find_by_manufacturer(params[:manu]).id
		else
			@manufacturer = ManufacturerOltc.find_by_manufacturer(params[:manu]).id
		end
	end
	@type = params[:etype]
	@failuredetail = params[:failuredetail]
	@time_interval = params[:time_interval].to_i
	@lead_time = params[:lead_time].to_i

	@age_weibull = Array.new
        @f_normal_weibull, @age_weibull = Transformer.calculate_f_normal_weibull(@equipement, @voltage, @manufacturer, @type, @failuredetail)
	@age_weibull =	@age_weibull.sort
     if @age_weibull.size >= 2
	n = @age_weibull.length
	@summation = Hash.new
	@summation["T"] = 0.0
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

                @summation["T"] = @summation["T"] + @weibull_table[i]["T"]
		@summation["x"] = @summation["x"] + @weibull_table[i]["x"]
		@summation["y"] = @summation["y"] + @weibull_table[i]["y"]
		@summation["x2"] = @summation["x2"] + @weibull_table[i]["x2"]
		@summation["y2"] = @summation["y2"] + @weibull_table[i]["y2"]
		@summation["xy"] = @summation["xy"] + @weibull_table[i]["xy"]
	end

	@beta = (@summation["xy"] - ((@summation["x"] * @summation["y"])/n)) / (@summation["x2"] - ((@summation["x"]**2)/n))

	if @beta > 6
		@rt = Array.new
		@lambda = Array.new

		@mtbf = @summation["T"]/n
		@delta = 0.0
		for i in 1..n do
			@delta = @delta + ((@weibull_table[i]["T"] - @mtbf)**2)
		end
		@delta = Math.sqrt(@delta / (n - 1))

		for t in 1..100 do
			z = (t - @mtbf)/@delta
			temp_rt = 1 - Statistics2.normaldist(z)
			if temp_rt <= 0.0001
				break
			end
			@rt[t] = temp_rt
			ft = (1/(@delta * (Math.sqrt(2 * Math::PI)))) * Math.exp(-0.5 * (z ** 2))
			@lambda[t] = ft/@rt[t]
		end
	
	else
		@c = (@summation["y"]/n) - (@beta * (@summation["x"]/n))
		@eta = Math.exp(-@c/@beta)
		@grammar = calculate_grammar(1 + (1.0/@beta))
		@mtbf = @eta * @grammar
	end
   end

  end

  def weibull_detail
	equipement = params[:equipement]
        voltage = params[:voltage]
	type = params[:type]
	manufacturer = params[:manufacturer]

        #if params[:manufacturer] == '-- All --'
        #        manufacturer = "-- All --"
        #else
        #        if(equipement == "Bushing")
        #                manufacturer = ManufacturerBushing.find_by_manufacturer(params[:manufacturer]).id
        #        elsif(equipement == "Arrester")
        #                manufacturer = ManufacturerArrester.find_by_manufacturer(params[:manufacturer]).id
        #        else
        #                manufacturer = ManufacturerOltc.find_by_manufacturer(params[:manufacturer]).id
        #        end
        #end
	@txinfos = Transformer.get_weibull_equipement(equipement, voltage, manufacturer, type)
  end

end
