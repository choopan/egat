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

  def weibull_calculation
	equipement = params[:select_manufacturer]
	voltage = params[:voltage]
	manufacturer = params[:manufacturer]
	type = params[:type]
	failuredetail = params[:failuredetail]


        #Transformer.calculate_f_poisson()
        @f_normal_weibull = Transformer.calculate_f_normal_weibull(equipement, voltage, manufacturer, type, failuredetail)

  end

  def weibull_chart
  end

  def weibull_detail
  end

end
