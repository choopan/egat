#encoding : utf-8
class ManufacturingController < ApplicationController
  def station
	@station = PowerStation.get_station()
	@station1 = PowerStation.new
	@num = @station.count
	if @num==0
		@station = PowerStation.new
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
	PowerStation.create(params[:power_station])
	redirect_to("/manufacturing/station")
  end

  def create_usage
	PowerUsage.create(params[:power_usage])
	redirect_to("/manufacturing/usage")
  end

  def create_tx
	ManufacturerTx.create(params[:manufacturer_tx])
        redirect_to("/manufacturing/manufacturer_tx")
  end

  def create_bushing
	ManufacturerBushing.create(params[:manufacturer_bushing])
	redirect_to("/manufacturing/manufacturer_bushing")
  end

  def create_arrester
	ManufacturerArrester.create(params[:manufacturer_arrester])
	redirect_to("/manufacturing/manufacturer_arrester")
  end

  def create_oltc
	ManufacturerOltc.create(params[:manufacturer_oltc])
	redirect_to("/manufacturing/manufacturer_oltc")
  end

  def modify_station
	@station  = PowerStation.get_station_id(params[:id])
  end

  def modify_usage
	@usage = PowerUsage.get_usage_id(params[:id])
  end

  def modify_tx
	@tx = ManufacturerTx.get_tx_id(params[:id])
  end

  def modify_bushing
	@bushing = ManufacturerBushing.get_bushing_id(params[:id])
  end

  def modify_arrester
	@arrester = ManufacturerArrester.get_arrester_id(params[:id])
  end

  def modify_oltc
	@oltc = ManufacturerOltc.get_oltc_id(params[:id])
  end

  def update_station
	station = PowerStation.get_station_id(params[:id])
	station[:name]=params[:power_station][:name]
	station[:fullName]=params[:power_station][:fullName]
	station[:region]=params[:power_station][:region]
	station[:kv]=params[:power_station][:kv].to_i
	station.update_attributes(station.attributes)
	redirect_to("/manufacturing/station")
  end

  def update_usage
	usage = PowerUsage.get_usage_id(params[:id])
	usage[:usage]=params[:power_usage][:usage]
	usage.update_attributes(usage.attributes)
        redirect_to("/manufacturing/usage")
  end

  def update_tx
	tx = ManufacturerTx.get_tx_id(params[:id])
	tx[:manufacturer] = params[:manufacturer_tx][:manufacturer]
	tx.update_attributes(tx.attributes)
	redirect_to("/manufacturing/manufacturer_tx")
  end

  def updat_bushing
	bushing = ManufacturerBushing.get_bushing_id(params[:id])
	bushing[:manufacturer] = params[:manufacturer_bushing][:manufacturer]
	bushing.update_attributes(bushing.attributes)
	redirect_to("/manufacturing/manufacturer_bushing")
  end

  def updat_arrester
	arrester = ManufacturerArrester.get_arrester_id(params[:id])
	arrester[:manufacturer] = params[:manufacturer_arrester][:manufacturer]
	arrester.update_attributes(arrester.attributes)
	redirect_to("/manufacturing/manufacturer_arrester")
  end

  def updat_oltc
	oltc = ManufacturerOltc.get_oltc_id(params[:id])
	oltc[:manufacturer] = params[:manufacturer_oltc][:manufacturer]
	oltc.update_attributes(oltc.attributes)
	redirect_to("/manufacturing/manufacturer_oltc")
  end

  def delete_station
	PowerStation.delete(params[:id])
	redirect_to("/manufacturing/station")
  end

  def delete_usage
	PowerUsage.delete(params[:id])
	redirect_to("/manufacturing/usage")
  end

  def delete_tx
	ManufacturerTx.delete(params[:id])
	redirect_to("/manufacturing/manufacturer_tx")
  end

  def delete_bushing
	ManufacturerBushing.delete(params[:id])
	redirect_to("/manufacturing/manufacturer_bushing")
  end

  def delete_arrester
	ManufacturerArrester.delete(params[:id])
	redirect_to("/manufacturing/manufacturer_arrester")
  end

  def delete_oltc
	ManufacturerOltc.delete(params[:id])
	redirect_to("/manufacturing/manufacturer_oltc")
  end
end
