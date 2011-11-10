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
  end

  def weibull_calculation
	equipement = params[:select_manufacturer]
	voltage = params[:voltage]
	manufacturer = params[:manufacturer]
	type = params[:type]
	failuredetail = params[:type]


  end

  def weibull_chart
  end

  def weibull_detail
  end

end
