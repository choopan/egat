#encoding : utf-8
class ManufacturingController < ApplicationController
  def index
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
	@station = Station.get_station().paginate(:page => params[:page], :per_page => 20)
	@station1 = Station.new
	if @station.nil?
		@station = Station.new
	end

  end

  def usage
	@usage = PowerUsage.get_usage()
	@usage1 = PowerUsage.new
	@num1 = @usage.count
	if @num1==0
		@usage = PowerUsage.new
	end
  end

  def manufacturer_tx
	@tx = ManufacturerTx.get_tx()
	@tx1 = ManufacturerTx.new
	@num2 = @tx.count
	if @num2==0
		@tx = ManufacturerTx.new
	end
  end

  def manufacturer_bushing
	@bushing = ManufacturerBushing.get_bushing()
	@bushing1 = ManufacturerBushing.new
	@num3 = @bushing.count
	if @num3==0
		@bushing = ManufacturerBushing.new
	end
  end

  def manufacturer_arrester
	@arrester = ManufacturerArrester.get_arrester()
	@arrester1 = ManufacturerArrester.new
	@num4 = @arrester.count
	if @num4==0
		@arrester = ManufacturerArrester.new
	end
  end

  def manufacturer_oltc
	@oltc = ManufacturerOltc.get_oltc()
	@oltc1 = ManufacturerOltc.new
	@num5 = @oltc.count
	if @num5==0
		@oltc = ManufacturerOltc.new
	end
	
  end
  def create_station
    if User.get_user(session[:user]).priv9==1
	Station.create(params[:station])
	end
	redirect_to("/manufacturing#station")
  end

  def create_usage
   if User.get_user(session[:user]).priv9==1
	PowerUsage.create(params[:power_usage])
   end
	redirect_to("/manufacturing#usage")
  end

  def create_tx
   if User.get_user(session[:user]).priv9==1
	ManufacturerTx.create(params[:manufacturer_tx])
   end
        redirect_to("/manufacturing#tx")
  end

  def create_bushing
   if User.get_user(session[:user]).priv9==1
	ManufacturerBushing.create(params[:manufacturer_bushing])
   end
	redirect_to("/manufacturing#bushing")
  end

  def create_arrester
   if User.get_user(session[:user]).priv9==1
	ManufacturerArrester.create(params[:manufacturer_arrester])
   end
	redirect_to("/manufacturing#arrester")
  end

  def create_oltc
   if User.get_user(session[:user]).priv9==1
	ManufacturerOltc.create(params[:manufacturer_oltc])
   end
	redirect_to("/manufacturing#oltc")
  end

  def modify_station
   if User.get_user(session[:user]).priv9==1
	@station  = Station.get_station_id(params[:id])
   else
	redirect_to("/manufacturing#station")
   end
  end

  def modify_usage
   if User.get_user(session[:user]).priv9==1
	@usage = PowerUsage.get_usage_id(params[:id])
   else
	redirect_to("/manufacturing#usage")
   end
  end

  def modify_tx
   if User.get_user(session[:user]).priv9==1
	@tx = ManufacturerTx.get_tx_id(params[:id])
   else
	redirect_to("/manufacturing#tx")
   end
  end

  def modify_bushing
   if User.get_user(session[:user]).priv9==1
	@bushing = ManufacturerBushing.get_bushing_id(params[:id])
   else
	redirect_to("/manufacturing#bushing")
   end
  end

  def modify_arrester
   if User.get_user(session[:user]).priv9==1
	@arrester = ManufacturerArrester.get_arrester_id(params[:id])
   else
	redirect_to("/manufacturing#arrester")
   end
  end

  def modify_oltc
   if User.get_user(session[:user]).priv9==1
	@oltc = ManufacturerOltc.get_oltc_id(params[:id])
   else
	redirect_to("/manufacturing#oltc")
   end
  end

  def update_station
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
   if User.get_user(session[:user]).priv9==1
	usage = PowerUsage.get_usage_id(params[:id])
	usage[:usage]=params[:power_usage][:usage]
	usage.update_attributes(usage.attributes)
   end
        redirect_to("/manufacturing#usage")
  end

  def update_tx
   if User.get_user(session[:user]).priv9==1
	tx = ManufacturerTx.get_tx_id(params[:id])
	tx[:manufacturer] = params[:manufacturer_tx][:manufacturer]
	tx.update_attributes(tx.attributes)
   end
	redirect_to("/manufacturing#tx")
  end

  def updat_bushing
   if User.get_user(session[:user]).priv9==1
	bushing = ManufacturerBushing.get_bushing_id(params[:id])
	bushing[:manufacturer] = params[:manufacturer_bushing][:manufacturer]
	bushing.update_attributes(bushing.attributes)
   end
	redirect_to("/manufacturing#bushing")
  end

  def updat_arrester
   if User.get_user(session[:user]).priv9==1
	arrester = ManufacturerArrester.get_arrester_id(params[:id])
	arrester[:manufacturer] = params[:manufacturer_arrester][:manufacturer]
	arrester.update_attributes(arrester.attributes)
   end
	redirect_to("/manufacturing#arrester")
  end

  def updat_oltc
   if User.get_user(session[:user]).priv9==1
	oltc = ManufacturerOltc.get_oltc_id(params[:id])
	oltc[:manufacturer] = params[:manufacturer_oltc][:manufacturer]
	oltc.update_attributes(oltc.attributes)
   end
	redirect_to("/manufacturing#oltc")
  end

  def delete_station
   if User.get_user(session[:user]).priv9==1
	Station.delete(params[:id])
   end
	redirect_to("/manufacturing#station")
  end

  def delete_usage
   if User.get_user(session[:user]).priv9==1
	PowerUsage.delete(params[:id])
   end
	redirect_to("/manufacturing#usage")
  end

  def delete_tx
   if User.get_user(session[:user]).priv9==1
	ManufacturerTx.delete(params[:id])
   end
	redirect_to("/manufacturing#tx")
  end

  def delete_bushing
   if User.get_user(session[:user]).priv9==1
	ManufacturerBushing.delete(params[:id])
   end
	redirect_to("/manufacturing#bushing")
  end

  def delete_arrester
   if User.get_user(session[:user]).priv9==1
	ManufacturerArrester.delete(params[:id])
   end
	redirect_to("/manufacturing#arrester")
  end

  def delete_oltc
   if User.get_user(session[:user]).priv9==1
	ManufacturerOltc.delete(params[:id])
   end
	redirect_to("/manufacturing#oltc")
  end
end
