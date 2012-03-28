#encoding : utf-8
class ManufacturingController < ApplicationController
	@@bc_ic = "จัดการ"
	@@bc_ic_link = "#"
  def index
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'กำหนดข้อมูลพื้นฐาน'
	@breadcrumb_link[1]  = ""
	if session[:user].nil?
			redirect_to('/login/login')
	end
	@userid = User.get_user(session[:user])
	station
	usage
	manufacturer_tx
	manufacturer_bushing
	manufacturer_arrester
	manufacturer_oltc
  end

  def station
	if session[:user].nil?
		redirect_to('/login/login')
	end
	@station = Station.get_station().paginate(:page => params[:page], :per_page => 20)
	@station1 = Station.new
	if @station.nil?
		@station = Station.new
	end

  end

  def usage
	if session[:user].nil?
		redirect_to('/login/login')
	end
	@usage = PowerUsage.get_usage()
	@usage1 = PowerUsage.new
	@num1 = @usage.count
	if @num1==0
		@usage = PowerUsage.new
	end
  end

  def manufacturer_tx
	if session[:user].nil?
		redirect_to('/login/login')
	end
	@tx = Brand.get_tx()
	@tx1 = Brand.new
	@num2 = @tx.count
	if @num2==0
		@tx = Brand.new
	end
  end

  def manufacturer_bushing
	if session[:user].nil?
		redirect_to('/login/login')
	end
	@bushing = ManufacturerBushing.get_bushing()
	@bushing1 = ManufacturerBushing.new
	@num3 = @bushing.count
	if @num3==0
		@bushing = ManufacturerBushing.new
	end
  end

  def manufacturer_arrester
	if session[:user].nil?
		redirect_to('/login/login')
	end
	@arrester = ManufacturerArrester.get_arrester()
	@arrester1 = ManufacturerArrester.new
	@num4 = @arrester.count
	if @num4==0
		@arrester = ManufacturerArrester.new
	end
  end

  def manufacturer_oltc
	if session[:user].nil?
		redirect_to('/login/login')
	end
	@oltc = ManufacturerOltc.get_oltc()
	@oltc1 = ManufacturerOltc.new
	@num5 = @oltc.count
	if @num5==0
		@oltc = ManufacturerOltc.new
	end
	
  end

  def create_station
	if session[:user].nil?
		redirect_to('/login/login')
	end
    if User.get_user(session[:user]).priv9==1
	Station.create(params[:station])
	end
	redirect_to("/manufacturing#station")
  end

  def create_usage
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	PowerUsage.create(params[:power_usage])
   end
	redirect_to("/manufacturing#usage")
  end

  def create_tx
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	Brand.create(params[:brand])
   end
        redirect_to("/manufacturing#tx")
  end

  def create_bushing
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	ManufacturerBushing.create(params[:manufacturer_bushing])
   end
	redirect_to("/manufacturing#bushing")
  end

  def create_arrester
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	ManufacturerArrester.create(params[:manufacturer_arrester])
   end
	redirect_to("/manufacturing#arrester")
  end

  def create_oltc
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	ManufacturerOltc.create(params[:manufacturer_oltc])
   end
	redirect_to("/manufacturing#oltc")
  end

  def modify_station
    @breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'กำหนดข้อมูลพื้นฐาน'
	@breadcrumb_link[1]  = "/manufacturing#station"
	@breadcrumb_title[2] = 'แก้ไข'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	@station  = Station.get_station_id(params[:id])
   else
	redirect_to("/manufacturing#station")
   end
  end

  def modify_usage
	 @breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'กำหนดข้อมูลพื้นฐาน'
	@breadcrumb_link[1]  = "/manufacturing#usage"
	@breadcrumb_title[2] = 'แก้ไข'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	@usage = PowerUsage.get_usage_id(params[:id])
   else
	redirect_to("/manufacturing#usage")
   end
  end

  def modify_tx
	 @breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'กำหนดข้อมูลพื้นฐาน'
	@breadcrumb_link[1]  = "/manufacturing#tx"
	@breadcrumb_title[2] = 'แก้ไข'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	@tx = Brand.get_tx_id(params[:id])
   else
	redirect_to("/manufacturing#tx")
   end
  end

  def modify_bushing
	 @breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'กำหนดข้อมูลพื้นฐาน'
	@breadcrumb_link[1]  = "/manufacturing#bushing"
	@breadcrumb_title[2] = 'แก้ไข'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	@bushing = ManufacturerBushing.get_bushing_id(params[:id])
   else
	redirect_to("/manufacturing#bushing")
   end
  end

  def modify_arrester
	 @breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'กำหนดข้อมูลพื้นฐาน'
	@breadcrumb_link[1]  = "/manufacturing#arrester"
	@breadcrumb_title[2] = 'แก้ไข'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	@arrester = ManufacturerArrester.get_arrester_id(params[:id])
   else
	redirect_to("/manufacturing#arrester")
   end
  end

  def modify_oltc
	 @breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'กำหนดข้อมูลพื้นฐาน'
	@breadcrumb_link[1]  = "/manufacturing#oltc"
	@breadcrumb_title[2] = 'แก้ไข'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	@oltc = ManufacturerOltc.get_oltc_id(params[:id])
   else
	redirect_to("/manufacturing#oltc")
   end
  end

  def update_station
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	station = Station.get_station_id(params[:id])
	station[:name]=params[:station][:name]
	station[:full_name]=params[:station][:full_name]
	station[:region]=params[:station][:region]
	station[:kv]=params[:station][:kv].to_i
	station.update_attributes(station.attributes)
   end
	redirect_to("/manufacturing#station")
  end

  def update_usage
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	usage = PowerUsage.get_usage_id(params[:id])
	usage[:usage]=params[:power_usage][:usage]
	usage.update_attributes(usage.attributes)
   end
        redirect_to("/manufacturing#usage")
  end

  def update_tx
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	tx = Brand.get_tx_id(params[:id])
	tx[:name] = params[:brand][:name]
	tx[:score] = params[:brand][:score]
	tx.update_attributes(tx.attributes)
   end
	redirect_to("/manufacturing#tx")
  end

  def updat_bushing
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	bushing = ManufacturerBushing.get_bushing_id(params[:id])
	bushing[:manufacturer] = params[:manufacturer_bushing][:manufacturer]
	bushing.update_attributes(bushing.attributes)
   end
	redirect_to("/manufacturing#bushing")
  end

  def updat_arrester
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	arrester = ManufacturerArrester.get_arrester_id(params[:id])
	arrester[:manufacturer] = params[:manufacturer_arrester][:manufacturer]
	arrester.update_attributes(arrester.attributes)
   end
	redirect_to("/manufacturing#arrester")
  end

  def updat_oltc
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	oltc = ManufacturerOltc.get_oltc_id(params[:id])
	oltc[:manufacturer] = params[:manufacturer_oltc][:manufacturer]
	oltc.update_attributes(oltc.attributes)
   end
	redirect_to("/manufacturing#oltc")
  end

  def delete_station
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	Station.delete(params[:id])
   end
	redirect_to("/manufacturing#station")
  end

  def delete_usage
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	PowerUsage.delete(params[:id])
   end
	redirect_to("/manufacturing#usage")
  end

  def delete_tx
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	Brand.delete(params[:id])
   end
	redirect_to("/manufacturing#tx")
  end

  def delete_bushing
  if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	ManufacturerBushing.delete(params[:id])
   end
	redirect_to("/manufacturing#bushing")
  end

  def delete_arrester
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	ManufacturerArrester.delete(params[:id])
   end
	redirect_to("/manufacturing#arrester")
  end

  def delete_oltc
	if session[:user].nil?
		redirect_to('/login/login')
	end
   if User.get_user(session[:user]).priv9==1
	ManufacturerOltc.delete(params[:id])
   end
	redirect_to("/manufacturing#oltc")
  end
end
