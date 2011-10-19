#encoding : UTF-8
class TransformerInfoController < ApplicationController
  def txlist

	if params[:region] == "" or params[:region].nil?
		@txinfos = Transformer.order("id").paginate(:page => params[:page], :per_page => 5)
	else
		@stations = Station.where("region = '#{params[:region]}'")
		whereclause = ""
		for station in @stations
			whereclause += "transformer_name like '#{station.name}%' or "
		end
		whereclause += "0"
		@txinfos = Transformer.where(whereclause).order("id").paginate(:page => params[:page], :per_page => 5)
	end

  end

  def txedit
  end

  def txadd
    @txinfo = Transformer.new
    @stations = Station.order("name").all
    @brand_ids = Brand.order("name").all
    @winding_types = WindingType.order("id").all
    @power_usages = PowerUsage.order("id").all
  end

  def txlistmove
	@txtransfers = TransformerTransfer.order("id").paginate(:page => params[:page], :per_page => 25)
  end

  def txshowmove
	@txmove = TransformerTransfer.find(params[:id])
  end

  def txaddmove

	@txmove = TransformerTransfer.new
	@txnames = Transformer.order("transformer_name")
	selectedTx = params[:transformer_name]
	if(!selectedTx.nil?) 
		txinfo = Transformer.where("transformer_name = '#{selectedTx}'").first
		@egatsn   = txinfo.egatsn
		station_name  = txinfo.station
	else
		@egatsn   = @txnames.first.egatsn
		station_name  = @txnames.first.station
	end
	@station = Station.where("name = '#{station_name}'").first.full_name
	@stations = Station.order("name")

  end
	
  def txdeletemove
        TransformerTransfer.delete(params[:id])
	redirect_to('/transformer_info/txlistmove')
  end

  def txeditmove
        @txmove = TransformerTransfer.find(params[:id])
	@stations = Station.order("name")
	@new_station = Station.where("full_name='#{@txmove.new_station}'").first.name
	da = @txmove[:action_date].to_s.split("-")
	@txmove[:action_date] = da[2] + "/" + da[1] + "/" + da[0]
  end

  def update_txaddmove
	#Get old transformer information
	old_transformer_egatsn = params[:transformer_transfer][:egatsn]
	old_txinfo = Transformer.where("egatsn = '#{old_transformer_egatsn}'").first

	#Get new transformer information
	new_transformer_name = params[:transformer_transfer][:new_station]+"-"+params[:transformer_transfer][:new_txname]
	new_txinfos = Transformer.where("transformer_name = '#{new_transformer_name}'")

	#Check if there are no using transformers on that name
	if(!new_txinfos.nil?) 
		for new_txinfo in new_txinfos do
			if(new_txinfo.status == 1) #there is a using transformer on that name
				redirect_to("/transformer_info/txaddmove", :notice => 'ชื่อหม้อแปลงที่สถานีใหม่กำลังใช้งานอยู่')
				return
			end
		end
	end

	#change transformer table information
	old_txinfo[:station] = params[:transformer_transfer][:new_station]
	old_txinfo[:txname]  = params[:transformer_transfer][:new_txname]
	old_txinfo[:status]  = 1 #ready to operate
	old_txinfo[:transformer_name] = old_txinfo[:station]+"-"+old_txinfo[:txname]
	old_txinfo.update_attributes(old_txinfo.attributes)


	#log transfer
	#transformer_transfer_attribute = TransformerTransfer.new
	#transformer_transfer_attribute[:old_txname] = params[:txmove][:txname]
	#transformer_transfer_attribute[:new_txname] = params[:txmove][:new_txname]
	#transformer_transfer_attribute[:egatsn] = params[:txmove][:egatsn]
	#transformer_transfer_attribute[:action_date] = params[:txmove][:date]
	#transformer_transfer_attribute[:user_op] = params[:txmove][:user]
	#transformer_transfer_attribute[:station] = params[:txmove][:station]
	#transformer_transfer_attribute[:new_station] = Station.where("name = '#{params[:transformer_transfer][:new_station]}'").first.full_name
	params[:transformer_transfer][:new_station] = Station.where("name = '#{params[:transformer_transfer][:new_station]}'").first.full_name
	da = params[:transformer_transfer][:action_date].split("/") 
	params[:transformer_transfer][:action_date] = da[2] + "-" + da[1] + "-" + da[0]
	if params[:transformer_transfer][:id].nil?
		TransformerTransfer.create(params[:transformer_transfer])
	else
		record = TransformerTransfer.find(params[:transformer_transfer][:id])
		record.update_attributes(params[:transformer_transfer])
	end	
	#transformer_transfer_attribute.save

	redirect_to('/transformer_info/txlistmove')
  end

  def failurereport
	if params[:region] == "" or params[:region].nil?
		@txnames = Transformer.order("transformer_name")
	else
		@stations = Station.where("region = '#{params[:region]}'")
		whereclause = ""
		for station in @stations
			whereclause += "transformer_name like '#{station.name}%' or "
		end
		whereclause += "0"
		@txnames = Transformer.where(whereclause).order("transformer_name")
	end


  end

end
