#encoding : utf-8
class IcOilController < ApplicationController
@@bc_ic = "Inventory Control"
@@bc_ic_link = "/ic_oil"
@@bc_oil = 'น้ำมันหม้อแปลง'
@@bc_oil_link = "/ic_oil/oil_chart"

def payment_list
 if session[:user].nil?
			redirect_to('/login/login')
  end
  @userid = User.get_user(session[:user])
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'รายการค่าใช้จ่าย'
	@breadcrumb_link[2]  = ""
	
	@payment_cost = IcAllcost.get_payment_list()
	if @payment_cost.nil?
		@payment_cost = IcAllcost.new
	end
end

def update_payment_cost
 if User.get_user(session[:user]).priv9==1
	x1 = params[:ic_allcost][:x1].to_i
	################Calculate x5####################
	if params[:ic_allcost][:x2].nil?
		x2 = 0;
	else
		x2 = params[:ic_allcost][:x2].to_f
	end

	if params[:ic_allcost][:x3].nil?
		x3 = 0;
	else
		x3 = params[:ic_allcost][:x3].to_f
	end
	
	x5 = ( x3 *12 )/ x2
	params[:ic_allcost][:x5] = x5

	################Calculate x6####################
	if params[:ic_allcost][:x4].nil?
		x4 = 0;
	else
		x4 = params[:ic_allcost][:x4].to_f
	end


	x6 = (x4/100) * (UpdatePrice.get_sumDC200() / UpdatePrice.get_sumD()) 
	params[:ic_allcost][:x6] = x6

	################Calculate x7####################
	x7 = x5 + x6
	params[:ic_allcost][:x7] = x7



	############# Update IcAllCost table ######################
	@payment_cost = IcAllcost.get_payment_list()
	if @payment_cost.nil?
	 @payment_cost = IcAllcost.create(params[:ic_allcost])
	else
	 @payment_cost.update_attributes(params[:ic_allcost])
  	end



	############## Update OilCalculate table #################

	@calresult = OilCalculate.get_period()
	if @calresult.nil?
		@calresult = OilCalculate.create()
	end

	avgD = UpdatePrice.get_avgD()

	@calresult[:Y1] = (((@calresult[:W] * avgD)/365) + UpdatePrice.get_y3()).round()
	@calresult[:Y2] = (Math.sqrt((2 * avgD * x1) / x7)).round()
	@calresult[:Y3] = UpdatePrice.get_y3().round()
	@calresult[:Y4] = (avgD/@calresult[:Y2]).to_i
	@calresult[:Y5] = ((avgD * UpdatePrice.get_sumDC200())/UpdatePrice.get_sumD()) + (x1 * @calresult[:Y4]) + ((x7 * @calresult[:Y2])/2)
	@calresult.update_attributes(@calresult.attributes)
  end
	redirect_to("/ic_oil/payment_list")
end

def index
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = ""
end

def menu_store
    if session[:user].nil?
		redirect_to('/login/login')
	end
	@userid = User.get_user(session[:user])
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'คลังรายการน้ำมัน'
	@breadcrumb_link[2]  = ""

	oil_start
	oil_store
end

def menu_withdraw
	if session[:user].nil?
		redirect_to('/login/login')
	end
	@userid = User.get_user(session[:user])
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'รายการเบิกจ่าย'
	@breadcrumb_link[2]  = ""
	oil_withdraw
	oil_annually
end

 def oil_chart
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = ""
	 if session[:user].nil?
		redirect_to('/login/login')
	end
	@userid = User.get_user(session[:user])
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
	   if icoilbalance[i].Date>=icoilinit.Date
	    if icoilbalance[i].Quantity>=0&&icoilbalance[i].Recv_date!=nil&&icoilbalance[i].Quantitypass!=nil
		@Quantity_1+=icoilbalance[i].Quantitypass
	    end
	    if icoilbalance[i].Quantity<0
		@Quantity_1+=icoilbalance[i].Quantity
	    end
	  end
	 end
	end

	@updateprice=UpdatePrice.get_updateprice(Date.today.year.to_i-1)

	@HistoricalData=IcOilBalance.get_icoilbalance()
	@num1=@HistoricalData.count
	@icoilinit=IcOilInit.get_icoilinit()
	if @icoilinit.nil?
		@icoilinit=IcOilInit.new
	end

	@countnum=0
	@NumberOfCylinders=@icoilinit.InitQuantity

	if @num1!=0
		for i in 0..@num1-1 do
			if @HistoricalData[i].Date.year.to_i>=Date.today.year.to_i-2
				break
			end
		     if @HistoricalData[i].Date>=@icoilinit.Date
			if @HistoricalData[i].Quantity<0
				@NumberOfCylinders+=@HistoricalData[i].Quantity
			else
				if @HistoricalData[i].Quantitypass!=nil
					@NumberOfCylinders+=@HistoricalData[i].Quantitypass
				end
			end
		     end
			@countnum+=1
		end
	end

	@oilcalculate=OilCalculate.get_period()
	if @oilcalculate.nil?
		@oilcalculate=OilCalculate.new
	end
		
 end

 def fill_price
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'ราคาน้ำมันเบิกจ่ายของปีที่ผ่านมา'
	@breadcrumb_link[2]  = ""

  if User.get_user(session[:user]).priv9==1
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
   else
	redirect_to('/ic_oil/oil_chart')
   end
 end
  
def oil_start
	@icoilinit = IcOilInit.get_icoilinit()
	if @icoilinit.nil?
	 @icoilinit = IcOilInit.new
	end
end
  
 def oil_store
	@icoilbalance = IcOilBalance.get_icoilbalance().paginate(:page => params[:page], :per_page => 20)
	if @icoilbalance.nil?
	 @icoilbalance = IcOilBalance.new
	 #@num=0
	else
 	 #@num = @icoilbalance.count
	 #@icoilbalance = IcOilBalance.order("Date").paginate(:page => params[:page], :per_page => 5)
	end
  end

  def oil_withdraw
	@icoilbalance = IcOilBalance.get_icoilbalance().paginate(:page => params[:page], :per_page => 20)
	if @icoilbalance.nil?
	 @icoilbalance = IcOilBalance.new

	end
  end
  
  def oil_annually
	@updateprice=UpdatePrice.get_updatepriceall()
	if @updateprice.nil?
		@updateprice=UpdatePrice.new
		@num=0
	else
		@num=@updateprice.count
	end
  end 

  def oil_buy
    if session[:user].nil?
			redirect_to('/login/login')
	end
	@userid = User.get_user(session[:user])
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'รายการสั่งซื้อ/รับน้ำมัน'
	@breadcrumb_link[2]  = ""


	@icoilbalance = IcOilBalance.get_icoilbalance()
	if @icoilbalance.nil?
	 @icoilbalance = IcOilBalance.new
	 @num=0
	else
	 @num = @icoilbalance.count
	end
  end

  def oil_calresult
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'ผลการคำนวณ'
	@breadcrumb_link[2]  = ""
	
	@calresult = OilCalculate.get_period()
	if @calresult.blank?
		@calresult = OilCalculate.new
	end
  end

  def oil_period
    if session[:user].nil?
		redirect_to('/login/login')
	end
	@userid = User.get_user(session[:user])
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'ระยะเวลาที่ได้รับน้ำมัน'
	@breadcrumb_link[2]  = ""
	
	@oilperiod=OilCalculate.get_period()
	if @oilperiod.nil?
		@oilperiod=OilCalculate.new
	end
  end

  def modify_icoilinit
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'คลังรายการน้ำมัน'
	@breadcrumb_link[2]  = "/ic_oil/menu_store"
	@breadcrumb_title[3] = 'แก้ไขปริมาณน้ำมันในคลังเริ่มต้น'
	@breadcrumb_link[3]  = ""
  if User.get_user(session[:user]).priv9==1

	@icoilinit = IcOilInit.get_icoilinit()
	if @icoilinit.nil?
	 @icoilinit = IcOilInit.new
	 @icoilinit_1 = "-"
	else
	 stringDate=@icoilinit[:Date].to_s.split(' ')
	 m=stringDate[0].split('-')
	 @icoilinit_1=m[2]+"/"+m[1]+"/"+m[0]
  	end
   else
	redirect_to('/ic_oil/menu_store')
   end
  end

  def modify_withdraw
   if User.get_user(session[:user]).priv9==1
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'รายการเบิกจ่าย'
	@breadcrumb_link[2]  = "/ic_oil/menu_withdraw"
	@breadcrumb_title[3] = 'แก้ไขรายการเบิกจ่ายน้ำมัน'
	@breadcrumb_link[3]  = ""
	
	@icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
	stringDate=@icoilbalance[:Date].to_s.split(' ')
	m=stringDate[0].split('-')
	@icoilbalance_1=m[2]+"/"+m[1]+"/"+m[0]
   else
	redirect_to("/ic_oil/menu_withdraw#option1")
   end
  end

  def modify_annually
   if User.get_user(session[:user]).priv9==1
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'รายการเบิกจ่าย'
	@breadcrumb_link[2]  = ""
	@updateprice = UpdatePrice.get_updatepriceid(params[:id])
   else
	redirect_to("/ic_oil/menu_withdraw#option2")
   end
  end

  def modify_buy
   if User.get_user(session[:user]).priv9==1
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'รายการสั่งซื้อ/รับน้ำมัน'
	@breadcrumb_link[2]  = "/ic_oil/oil_buy"
	@breadcrumb_title[3] = 'แก้ไขรายการรับน้ำมัน'
	@breadcrumb_link[3]  = ""

	@icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
   else
	redirect_to('/ic_oil/oil_buy')
   end
  end

  def new_withdraw
   if User.get_user(session[:user]).priv9==1
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'รายการเบิกจ่าย'
	@breadcrumb_link[2]  = "/ic_oil/menu_withdraw"
	@breadcrumb_title[3] = 'เพิ่มรายการใหม่'
	@breadcrumb_link[3]  = ""

	@icoilbalance = IcOilBalance.new
	#m=@icoilbalance[:Date].to_s.split('-')
	#@icoilbalance_1=m[2]+"/"+m[1]+"/"+m[0]
   else
	redirect_to("/ic_oil/menu_withdraw#option1")
   end
  end

  def new_buy
   if User.get_user(session[:user]).priv9==1
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = @@bc_oil
	@breadcrumb_link[1]  = @@bc_oil_link
	@breadcrumb_title[2] = 'รายการสั่งซื้อ/รับน้ำมัน'
	@breadcrumb_link[2]  = "/ic_oil/oil_buy"
	@breadcrumb_title[3] = 'เพิ่มรายการสั่งซื้อน้ำมัน'
	@breadcrumb_link[3]  = ""


	@icoilbalance = IcOilBalance.new
	#m=@icoilbalance[:Date].to_s.split('-')
	#@icoilbalance_1=m[2]+"/"+m[1]+"/"+m[0]
   else
	redirect_to('/ic_oil/oil_buy')
   end
  end

  def update_icoilinit
   if User.get_user(session[:user]).priv9==1
	@icoilinit = IcOilInit.get_icoilinit()
	if @icoilinit.nil?
	 params[:ic_oil_init][:id] = 1
	 m=params[:Date].split('/')
	 params[:ic_oil_init][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	 @icoilinit = IcOilInit.create(params[:ic_oil_init])
	else
	 m=params[:Date].split('/')
	 params[:ic_oil_init][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	 params[:ic_oil_init][:initquatity] = params[:InitQuantity]
	 @icoilinit.update_attributes(params[:ic_oil_init])
  	end
   end
	redirect_to("/ic_oil/menu_store#option2")
  end
  
  def update_withdraw
   if User.get_user(session[:user]).priv9==1
	icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
	m=params[:Date].split('/')
	icoilbalance[:Date]=m[2]+"-"+m[1]+"-"+m[0]
	icoilbalance[:Quantity] = -1*(params[:Quantity]).to_i
 	icoilbalance.update_attributes(icoilbalance.attributes)
   end
	redirect_to("/ic_oil/menu_withdraw#option1")
  end

  def update_buy
   if User.get_user(session[:user]).priv9==1
	icoilbalance = IcOilBalance.get_icoilbalance_id(params[:id])
	m=params[:Date].split('/')
	n=params[:Recv_date].split('/')
	icoilbalance[:Date]=m[2]+"-"+m[1]+"-"+m[0]
	icoilbalance[:Recv_date]=n[2]+"-"+n[1]+"-"+n[0]
	icoilbalance[:Quantity] = params[:Quantity].to_i
	icoilbalance[:Price] = params[:Price].to_i
	icoilbalance[:Quantitypass] = params[:Quantitypass].to_i
 	icoilbalance.update_attributes(icoilbalance.attributes)
   end
	redirect_to("/ic_oil/oil_buy")
  end

  def update_oilperiod
   if User.get_user(session[:user]).priv9==1
	oilperiod=OilCalculate.get_period()
	if oilperiod.nil?
		params[:oil_calculate][:W]=params[:oil_calculate][:W]
		OilCalculate.create(params[:oil_calculate])
	else 
		oilperiod[:W]=params[:oil_calculate][:W]
		oilperiod.update_attributes(oilperiod.attributes)
	end
   end
	redirect_to("/ic_oil/oil_period")
  end
  
  def update_annually
   if User.get_user(session[:user]).priv9==1
	updateprice = UpdatePrice.get_updatepriceid(params[:id])
	updateprice[:Year]=params[:Year].to_i
	updateprice[:quantity]=params[:Quantity].to_i
	updateprice[:Price]=params[:Price].to_f
	updateprice.update_attributes(updateprice.attributes)
   end
	redirect_to("/ic_oil/menu_withdraw#option2")
  end

  def create_withdraw
   if User.get_user(session[:user]).priv9==1
	m=params[:Date].split('/')
	params[:ic_oil_balance][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	params[:ic_oil_balance][:Quantity] = -1*(params[:ic_oil_balance][:Quantity]).to_i
	IcOilBalance.create(params[:ic_oil_balance])
   end
	redirect_to("/ic_oil/menu_withdraw#option1")
  end

  def create_buy
   if User.get_user(session[:user]).priv9==1
	m=params[:Date].split('/')
	#n=params[:Recv_date].split('/')
	params[:ic_oil_balance][:Date]=m[2]+"-"+m[1]+"-"+m[0]
	#params[:ic_oil_balance][:Recv_date]=n[2]+"-"+n[1]+"-"+n[0]
	params[:ic_oil_balance][:Quantity] = params[:ic_oil_balance][:Quantity].to_i
	params[:ic_oil_balance][:Price] = params[:ic_oil_balance][:Price].to_i
	IcOilBalance.create(params[:ic_oil_balance])
   end
	redirect_to("/ic_oil/oil_buy")
  end
  
  def create_updateprice
   if User.get_user(session[:user]).priv9==1
	params[:update_price][:Year]=params[:Year].to_i
	params[:update_price][:quantity]=params[:Quantity].to_i
	params[:update_price][:Price]=params[:update_price][:Price].to_f
	UpdatePrice.create(params[:update_price])
   end
	redirect_to("/ic_oil/oil_chart")
  end

  def delete_withdraw
   if User.get_user(session[:user]).priv9==1
	IcOilBalance.delete(params[:id])
   end
	redirect_to("/ic_oil/menu_withdraw#option1")
  end

  def delete_buy
   if User.get_user(session[:user]).priv9==1
	IcOilBalance.delete(params[:id])
   end
	redirect_to("/ic_oil/oil_buy")
  end
end
