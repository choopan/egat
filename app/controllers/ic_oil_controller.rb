class IcOilController < ApplicationController

def menu_withdraw
	oil_withdraw
	oil_annually
end
 
 def oil_chart
	icoilbalance=IcOilBalance.get_icoilbalance()
	if icoilbalance.nil?
	 icoilbalance = IcOilBalance.new
	end
	icoilinit = IcOilInit.get_icoilinit()
	if icoilinit.nil?
	 icoilinit = IcOilInit.new
	end
 	num = icoilbalance.count
	@Quantity_1=icoilinit.InitQuantity
	if num!=0
	 for i in 0..num-1 do
	    if icoilbalance[i].Quantity>=0&&icoilbalance[i].Recv_date!=nil&&icoilbalance[i].Quantitypass!=nil
		@Quantity_1+=icoilbalance[i].Quantitypass
	    end
	    if icoilbalance[i].Quantity<0
		@Quantity_1+=icoilbalance[i].Quantity
	    end
	 end
	end

	@updateprice=UpdatePrice.get_updateprice(Date.today.year.to_i-1)

	@HistoricalData=IcOilBalance.get_icoilbalance()
	@num1=@HistoricalData.count
	@icoilinit=IcOilInit.get_icoilinit()
	if icoilinit.nil?
		@icoilinit=IcOilInit.new
	end
	@countnum=0
	@NumberOfCylinders=@icoilinit.InitQuantity
	if @num1!=0
		for i in 0..@num1-1 do
			if @HistoricalData[i].Date.year.to_i>=Date.today.year.to_i-2
				break
			end
			if @HistoricalData[i].Quantity<0
				@NumberOfCylinders+=@HistoricalData[i].Quantity
			else
				if @HistoricalData[i].Quantitypass!=nil
					@NumberOfCylinders+=@HistoricalData[i].Quantitypass
				end
			end
			@countnum+=1
		end
	end
		
 end

 def fill_price
	@updateprice_1=UpdatePrice.new

	icoilbalance=IcOilBalance.get_oilwithdraw(Date.today.year.to_i-1)
	if icoilbalance.nil?
		icoilbalance=IcOilBalance.new
		@quantity_withdraw=0
	else
		@quantity_withdraw=0
		num=icoilbalance.count
	      if num!=0
		for i in 0..num-1 do
		 	if icoilbalance[i].Quantity<0
		 		@quantity_withdraw+=icoilbalance[i].Quantity
		 	end
		 end
	     end
		 @quantity_withdraw*=-1
	end
 end
  
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
	 @num1=0
	else
 	 @num1 = @icoilbalance.count
	end
  end
  
  def oil_annually
	@updateprice=UpdatePrice.get_updatepriceall()
	if @updateprice.nil?
		@updateprice=UpdatePrice.new
		@num2=0
	else
		@num2=@updateprice.count
	end
  end 

  def oil_buy
	@icoilbalance = IcOilBalance.get_icoilbalance()
	if @icoilbalance.nil?
	 @icoilbalance = IcOilBalance.new
	 @num=0
	else
	 @num = @icoilbalance.count
	end
  end

  def oil_calculate
  end

  def oil_calresult
  end

  def oil_period
	@oilperiod=OilCalculate.get_period()
	if @oilperiod.nil?
		@oilperiod=OilCalculate.new
	end
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

  def modify_annually
	@updateprice = UpdatePrice.get_updatepriceid(params[:id])
  end

  def modify_buy
	@icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
  end

  def new_withdraw
	@icoilbalance = IcOilBalance.new
	#m=@icoilbalance[:Date].to_s.split('-')
	#@icoilbalance_1=m[2]+"/"+m[1]+"/"+m[0]
  end

  def new_buy
	@icoilbalance = IcOilBalance.new
	#m=@icoilbalance[:Date].to_s.split('-')
	#@icoilbalance_1=m[2]+"/"+m[1]+"/"+m[0]
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
	redirect_to("/ic_oil/menu_withdraw#option1")
  end

  def update_buy
	@icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
	m=params[:Date].split('/')
	n=params[:Recv_date].split('/')
	@icoilbalance[:Date]=m[2]+"-"+m[1]+"-"+m[0]
	@icoilbalance[:Recv_date]=n[2]+"-"+n[1]+"-"+n[0]
	@icoilbalance[:Quantity] = params[:Quantity].to_i
	@icoilbalance[:Price] = params[:Price].to_i
	@icoilbalance[:Quantitypass] = params[:Quantitypass].to_i
 	@icoilbalance.update_attributes(@icoilbalance)
	redirect_to("/ic_oil/oil_buy")
  end

  def update_oilperiod
	oilperiod=OilCalculate.get_period()
	if oilperiod.nil?
		params[:oil_calculate][:W]=params[:oil_calculate][:W]
		OilCalculate.create(params[:oil_calculate])
	else 
		oilperiod[:W]=params[:oil_calculate][:W]
		oilperiod.update_attributes(oilperiod)
	end
	redirect_to("/ic_oil/oil_period")
  end
  
  def update_annually
	updateprice = UpdatePrice.get_updatepriceid(params[:id])
	updateprice[:Year]=params[:Year].to_i
	updateprice[:quantity]=params[:Quantity].to_i
	updateprice[:Price]=params[:update_price][:Price].to_f
	updateprice.update_attributes(updateprice)
	redirect_to("/ic_oil/menu_withdraw#option2")
  end

  def create_withdraw
	m=params[:Date].split('/')
	params[:ic_oil_balance][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	params[:ic_oil_balance][:Quantity] = -1*(params[:ic_oil_balance][:Quantity]).to_i
	IcOilBalance.create(params[:ic_oil_balance])
	redirect_to("/ic_oil/menu_withdraw#option1")
  end

  def create_buy
	m=params[:Date].split('/')
	#n=params[:Recv_date].split('/')
	params[:ic_oil_balance][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	#params[:ic_oil_balance][:Recv_date]=n[2]+"-"+n[1]+"-"+n[0]
	params[:ic_oil_balance][:Quantity] = params[:ic_oil_balance][:Quantity].to_i
	params[:ic_oil_balance][:Price] = params[:ic_oil_balance][:Price].to_i
	IcOilBalance.create(params[:ic_oil_balance])
	redirect_to("/ic_oil/oil_buy")
  end
  
  def create_updateprice
	params[:update_price][:Year]=params[:Year].to_i
	params[:update_price][:quantity]=params[:Quantity].to_i
	params[:update_price][:Price]=params[:update_price][:Price].to_f
	UpdatePrice.create(params[:update_price])
	redirect_to("/ic_oil/oil_chart")
  end

  def delete_withdraw
	IcOilBalance.delete(params[:id])
	redirect_to("/ic_oil/menu_withdraw#option1")
  end
  def delete_buy
	IcOilBalance.delete(params[:id])
	redirect_to("/ic_oil/oil_buy")
  end
end
