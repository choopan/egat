class IcOilController < ApplicationController

  def oil_store
	@icoilinit = IcOilInit.get_icoilinit()
	if @icoilinit.nil?
	 @icoilinit = IcOilInit.new
	end
	@icoilbalance = IcOilBalance.get_icoilbalance()
	if @icoilbalance.nil?
	 @icoilbalance = IcOilBalance.new
	end
 	@num = @icoilbalance.count
  end

  def oil_withdraw
	@icoilbalance = IcOilBalance.get_icoilbalance()
	if @icoilbalance.nil?
	 @icoilbalance = IcOilBalance.new
	end
 	@num = @icoilbalance.count
  end

  def oil_buy
	@icoilbalance = IcOilBalance.get_icoilbalance()
	if @icoilbalance.nil?
	 @icoilbalance = IcOilBalance.new
	end
	@num = @icoilbalance.count
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
	 @icoilinit_1 = "-"
	else
	 stringDate=@icoilinit[:Date].to_s
	 m=stringDate.split('-')
	 @icoilinit_1=m[2]+"/"+m[1]+"/"+m[0]
  	end
  end
  def modify_withdraw
	@icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
	stringDate=@icoilbalance[:Date].to_s
	m=stringDate.split('-')
	@icoilbalance_1=m[2]+"/"+m[1]+"/"+m[0]
  end

  def modify_buy
	@icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
	stringDate1=@icoilbalance[:Date].to_s
	stringDate2=@icoilbalance[:Recv_date].to_s
	m=stringDate1.split('-')
	n=stringDate2.split('-')
	@icoilbalance_1=m[2]+"/"+m[1]+"/"+m[0]
	@icoilbalance_2=n[2]+"/"+n[1]+"/"+n[0]
  end

  def new_withdraw
	@icoilbalance = IcOilBalance.new
	m=@icoilbalance[:Date].to_s.split('-')
	@icoilbalance_1=m[2]+"/"+m[1]+"/"+m[0]
  end

  def new_buy
	@icoilbalance = IcOilBalance.new
	m=@icoilbalance[:Date].to_s.split('-')
	n=@icoilbalance[:Recv_date].to_s.split('-')
	@icoilbalance_1=m[2]+"/"+m[1]+"/"+m[0]
	@icoilbalance_2=n[2]+"/"+n[1]+"/"+n[0]
  end

  def update_icoilinit
	@icoilinit = IcOilInit.get_icoilinit()
	if @icoilinit.nil?
	 params[:ic_oil_init][:id] = 1
	 m=params[:Date].split('/')
	 params[:ic_oil_init][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	 @icoilinit = IcOilInit.create(params[:ic_oil_init])
	else
	 m=params[:Date].split('/')
	 params[:ic_oil_init][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	 @icoilinit.update_attributes(params[:ic_oil_init])
  	end
	redirect_to("/ic_oil/oil_store")
  end
  
  def update_withdraw
	@icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
	m=params[:Date].split('/')
	@icoilbalance[:Date]=m[2]+"-"+m[1]+"-"+m[0]
	@icoilbalance[:Quantity] = -1*(params[:Quantity]).to_i
 	@icoilbalance.update_attributes(@icoilbalance)
	redirect_to("/ic_oil/oil_withdraw")
  end

  def update_buy
	@icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
	m=params[:Date].split('/')
	n=params[:Recv_date].split('/')
	@icoilbalance[:Date]=m[2]+"-"+m[1]+"-"+m[0]
	@icoilbalance[:Recv_date]=n[2]+"-"+n[1]+"-"+n[0]
	@icoilbalance[:Quantity] = params[:Quantity].to_i
	@icoilbalance[:Price] = params[:Price].to_i
 	@icoilbalance.update_attributes(@icoilbalance)
	redirect_to("/ic_oil/oil_buy")
  end

  def create_withdraw
	m=params[:Date].split('/')
	params[:ic_oil_balance][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	params[:ic_oil_balance][:Quantity] = -1*(params[:ic_oil_balance][:Quantity]).to_i
	IcOilBalance.create(params[:ic_oil_balance])
	redirect_to("/ic_oil/oil_withdraw")
  end

  def create_buy
	m=params[:Date].split('/')
	n=params[:Recv_date].split('/')
	params[:ic_oil_balance][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	params[:ic_oil_balance][:Recv_date]=n[2]+"-"+n[1]+"-"+n[0]
	params[:ic_oil_balance][:Quantity] = params[:ic_oil_balance][:Quantity].to_i
	params[:ic_oil_balance][:Price] = params[:ic_oil_balance][:Price].to_i
	IcOilBalance.create(params[:ic_oil_balance])
	redirect_to("/ic_oil/oil_buy")
  end

  def delete_withdraw
	IcOilBalance.delete(params[:id])
	redirect_to("/ic_oil/oil_withdraw")
  end
  def delete_buy
	IcOilBalance.delete(params[:id])
	redirect_to("/ic_oil/oil_buy")
  end
end
