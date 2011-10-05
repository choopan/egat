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
  end

  def manufacturer_tx
  end

  def manufacturer_bushing
  end

  def manufacturer_arrester
  end

  def manufacturer_lotc
  end
  def create_station
	params[:power_station][:region]=Iconv.conv('tis-620', 'utf-8', params[:power_station][:region])
	params[:power_station][:kv]=params[:power_station][:kv].to_i
	PowerStation.create(params[:power_station])
	redirect_to("/manufacturing/station")
  end

  def modify_station
	@station  = PowerStation.get_station_id(params[:id])
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

  def delete_station
	PowerStation.delete(params[:id])
	redirect_to("/manufacturing/station")
  end

end
