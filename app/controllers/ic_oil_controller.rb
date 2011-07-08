class IcOilController < ApplicationController

  def oil_store
	@icoilinit = IcOilInit.get_icoilinit()
	if @icoilinit.nil?
	 @icoilinit = IcOilInit.new
	end
	@icoilbalance = IcOilBalance.get_icoilbalance()
	if @icoilbalance.nil?
	 @@icoilbalance = IcOilBalance.new
	end
 	@num = @icoilbalance.count
  end

  def oil_withdraw
  end

  def oil_buy
  end

  def oil_calculate
  end

  def oil_calresult
  end

  def oil_period
  end

  def modify_icoilinit
	@icoilinit = IcOilInit.get_icoilinit()
	if @icoilinit.nil?
	 @icoilinit = IcOilInit.new
  	end
  end
  
  def update_icoilinit
	@icoilinit = IcOilInit.get_icoilinit()
	if @icoilinit.nil?
	 params[:ic_oil_init][:id] = 1
	 @icoilinit = IcOilInit.create(params[:ic_oil_init])
	else
	 @icoilinit.update_attributes(params[:ic_oil_init])
  	end
	redirect_to("/ic_oil/oil_store")
  end

end
