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
    @manufacturer_bushing = ManufacturerBushing.get_bushing()
    @num_bushing = @manufacturer_bushing.count
    if @num_bushing==0
	@manufacturer_bushing = ManufacturerBushing.new
    end
    @manufacturer_arrester = ManufacturerArrester.get_arrester()
    @num_arrester = @manufacturer_arrester.count
    if @num_arrester==0
	@manufacturer_arrester = ManufacturerArrester.new
    end
    @manufacturer_oltc = ManufacturerOltc.get_oltc()
    @num_oltc = @manufacturer_oltc.count
    if @num_oltc==0
	@manufacturer_oltc = ManufacturerOltc.new
    end
	
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

        if params[:tid] != "" and !params[:tid].nil?
              @txinfo = Transformer.find(params[:tid])
        end
  end

  def addfailurereport
	@environments = FdEnvironmnt.get_environment()
	@num_environments = @environments.count

	@function = FdFunction.get_function()
	@num_function = @function.count
	
	@detail = FdDetail.get_detail()
	@num_detail = @detail.count
#-------------------------------------------------------------
	@group = FdGroupPart.get_group()
	@num_group = @group.count
	#if @num_group!=0
	#	for i in 0..@num_group-1 do
	#		@part[i] = FdPart.get_part(@group[i].id)
	#		@num_part[i] = @part[i].count
	#	end
	#end
#----------------------------------------------------------------
	@mode = FdMode.get_mode()
	@num_mode = @mode.count

	@reason = FdReason.get_reason()
	@num_reason = @reason.count
	
	@manage = FdManage.get_manage()
	@num_manage = @manage.count
  end
  
  def txcreate
	@transformer = Transformer.new
	@transformer_accessory = TransformerAccessory.new
	#-------transformer-------
	@transformer[:egatsn] = params[:egatsn]
	@transformer[:contract] = params[:contract]
	@transformer[:station] = params[:station]
	@transformer[:txname] = params[:tx_name]
	@transformer[:manufacturing] = params[:brand_id].to_i
	@transformer[:brand_id] = params[:brand_id].to_i
	@transformer[:manufacturingserial] = params[:manufacturingserial]
	@transformer[:phase] = params[:phase].to_i
	@transformer[:position] = params[:phase_position]
	if @transformer[:phase]==1
		@transformer[:transformer_name] = params[:station].to_s+"-"+params[:tx_name].to_s+params[:phase_position].to_s
	else
		@transformer[:transformer_name] = params[:station].to_s+"-"+params[:tx_name].to_s
	end
	@transformer[:maxcapacity] = params[:maxcapacity]
	@transformer[:hv] = params[:hv].to_f
	@transformer[:lv] = params[:lv].to_f
	@transformer[:tv] = params[:tv].to_f
	if params[:first_energize]!=""
		date_1 = params[:first_energize].to_s.split("/")
		@transformer[:first_energize] = date_1[2]+"-"+date_1[1]+"-"+date_1[0]
	end
	@transformer[:winding_type_id] = params[:winding_type].to_i
	@transformer[:vector_group] = params[:vector_group]
	@transformer[:status] = params[:status].to_i
	@transformer[:detail] = params[:detail]
	#-------------transformer_accessory----------
	@transformer_accessory[:bushing_hv_manu] = params[:bushing_hv_manu].to_i
	@transformer_accessory[:bushing_hv_type] = params[:bushing_hv_type]
	@transformer_accessory[:bushing_hv_year] = params[:bushing_hv_year].to_i
	@transformer_accessory[:bushing_hv_h0] = params[:bushing_hv_h0]
	@transformer_accessory[:bushing_hv_h1] = params[:bushing_hv_h1]
	@transformer_accessory[:bushing_hv_h2] = params[:bushing_hv_h2]
	@transformer_accessory[:bushing_hv_h3] = params[:bushing_hv_h3]
	@transformer_accessory[:bushing_lv_manu] = params[:bushing_lv_manu].to_i
	@transformer_accessory[:bushing_lv_type] = params[:bushing_lv_type]
	@transformer_accessory[:bushing_lv_year] = params[:bushing_lv_year].to_i
	@transformer_accessory[:bushing_lv_x0] = params[:bushing_lv_x0]
	@transformer_accessory[:bushing_lv_x1] = params[:bushing_lv_x1]
	@transformer_accessory[:bushing_lv_x2] = params[:bushing_lv_x2]
	@transformer_accessory[:bushing_lv_x3] = params[:bushing_lv_x3]
	@transformer_accessory[:bushing_tv_manu] = params[:bushing_tv_manu].to_i
	@transformer_accessory[:bushing_tv_type] = params[:bushing_tv_type]
	@transformer_accessory[:bushing_tv_year] = params[:bushing_tv_year].to_i
	@transformer_accessory[:bushing_tv_y1] = params[:bushing_tv_y1]
	@transformer_accessory[:bushing_tv_y2] = params[:bushing_tv_y2]
	@transformer_accessory[:bushing_tv_y3] = params[:bushing_tv_y3]

	@transformer_accessory[:arrester_hv_manu] = params[:arrester_hv_manu].to_i
	@transformer_accessory[:arrester_hv_type] = params[:arrester_hv_type]
	@transformer_accessory[:arrester_hv_year] = params[:arrester_hv_year].to_i
	@transformer_accessory[:arrester_hv_h1] = params[:arrester_hv_h1]
	@transformer_accessory[:arrester_hv_h2] = params[:arrester_hv_h2]
	@transformer_accessory[:arrester_hv_h3] = params[:arrester_hv_h3]
	@transformer_accessory[:arrester_hv_isgap] = params[:arrester_hv_isgap].to_i
	@transformer_accessory[:arrester_lv_manu] = params[:arrester_lv_manu].to_i
	@transformer_accessory[:arrester_lv_type] = params[:arrester_lv_type]
	@transformer_accessory[:arrester_lv_year] = params[:arrester_lv_year].to_i
	@transformer_accessory[:arrester_lv_x1] = params[:arrester_lv_x1]
	@transformer_accessory[:arrester_lv_x2] = params[:arrester_lv_x2]
	@transformer_accessory[:arrester_lv_x3] = params[:arrester_lv_x3]
	@transformer_accessory[:arrester_lv_isgap] = params[:arrester_lv_isgap].to_i
	@transformer_accessory[:arrester_tv_manu] = params[:arrester_tv_manu].to_i
	@transformer_accessory[:arrester_tv_type] = params[:arrester_tv_type]
	@transformer_accessory[:arrester_tv_year] = params[:arrester_tv_year].to_i
	@transformer_accessory[:arrester_tv_y1] = params[:arrester_tv_y1]
	@transformer_accessory[:arrester_tv_y2] = params[:arrester_tv_y2]
	@transformer_accessory[:arrester_tv_y3] = params[:arrester_tv_y3]
	@transformer_accessory[:arrester_tv_isgap] = params[:arrester_tv_isgap].to_i

	@transformer_accessory[:oltc_manu] = params[:oltc_manu].to_i
	@transformer_accessory[:oltc_type] = params[:oltc_type]
	@transformer_accessory[:oltc_year] = params[:oltc_year].to_i

	@transformer_accessory.save
	tranformer_accessory1 = TransformerAccessory.transformer_getid_instantaneous()
	@transformer[:transformer_accessories_id] = tranformer_accessory1.id
	@transformer.save
	
	if params[:image]!=nil
		transformer1 = Transformer.transformer_getid()
		m=params[:image].original_filename.to_s.split(".")
		transformer1[:picture] = transformer1.id.to_s+"."+m[1].to_s
		transformer1.update_attributes(transformer1.attributes)
		TxImage.save(transformer1.id.to_s,params[:image])
	end
	redirect_to("/transformer_info/txlist")
  end

  def modify_transformer
	@transformer = Transformer.get_transformer_id(params[:id])
	@stations = Station.order("name").all
	@num_station = @stations.count
	@brand_ids = Brand.order("name").all
	@num_brand_ids = @brand_ids.count
	@winding_types = WindingType.order("id").all
	@num_winding_types = @winding_types.count
	@power_usages = PowerUsage.order("id").all
	@num_powerusages = @power_usages.count
	if @transformer.first_energize!=nil
		tempx = @transformer.first_energize.to_s.split(" ")
		m=tempx[0].split("-")
		@date_1=m[2]+"/"+m[1]+"/"+m[0]
	end

	@transformer_accessory = TransformerAccessory.get_transformer_accessories_id(@transformer.transformer_accessories_id)
	if @transformer_accessory.nil?
		@num_accessory=0
		@transformer_accessory = TransformerAccessory.new
	end
	@manufacturer_bushing = ManufacturerBushing.get_bushing()
   	@num_bushing = @manufacturer_bushing.count
    	if @num_bushing==0
		@manufacturer_bushing = ManufacturerBushing.new
   	end
    	@manufacturer_arrester = ManufacturerArrester.get_arrester()
    	@num_arrester = @manufacturer_arrester.count
    	if @num_arrester==0
		@manufacturer_arrester = ManufacturerArrester.new
    	end
    	@manufacturer_oltc = ManufacturerOltc.get_oltc()
    	@num_oltc = @manufacturer_oltc.count
    	if @num_oltc==0
		@manufacturer_oltc = ManufacturerOltc.new
    	end	
  end

  def updat_transformer
	transformer = Transformer.get_transformer_id(params[:transformer_id])	
	#-------transformer-------
	transformer[:egatsn] = params[:egatsn]
	transformer[:contract] = params[:contract]
	transformer[:station] = params[:station]
	transformer[:txname] = params[:tx_name]
	transformer[:manufacturing] = params[:brand_id].to_i
	transformer[:brand_id] = params[:brand_id].to_i
	transformer[:manufacturingserial] = params[:manufacturingserial]
	transformer[:phase] = params[:phase].to_i
	transformer[:position] = params[:phase_position]
	if transformer[:phase]==1
		transformer[:transformer_name] = params[:station].to_s+"-"+params[:tx_name].to_s+params[:phase_position].to_s
	else
		transformer[:transformer_name] = params[:station].to_s+"-"+params[:tx_name].to_s
	end
	transformer[:maxcapacity] = params[:maxcapacity]
	transformer[:hv] = params[:hv].to_f
	transformer[:lv] = params[:lv].to_f
	transformer[:tv] = params[:tv].to_f
	if params[:first_energize]!=""
		date_1 = params[:first_energize].to_s.split("/")
		transformer[:first_energize] = date_1[2]+"-"+date_1[1]+"-"+date_1[0]
	end
	transformer[:winding_type_id] = params[:winding_type].to_i
	transformer[:vector_group] = params[:vector_group]
	transformer[:status] = params[:status].to_i
	transformer[:detail] = params[:detail]
	if params[:image]!=nil
		m=params[:image].original_filename.to_s.split(".")
		transformer[:picture] = transformer.id.to_s+"."+m[1].to_s
	end

	#-------------transformer_accessory----------
	transformer_accessory = TransformerAccessory.get_transformer_accessories_id(params[:accessories_id])
	if transformer_accessory.nil?
		create=1
		transformer_accessory = TransformerAccessory.new
	end	
	transformer_accessory[:bushing_hv_manu] = params[:bushing_hv_manu].to_i
	transformer_accessory[:bushing_hv_type] = params[:bushing_hv_type]
	transformer_accessory[:bushing_hv_year] = params[:bushing_hv_year].to_i
	transformer_accessory[:bushing_hv_h0] = params[:bushing_hv_h0]
	transformer_accessory[:bushing_hv_h1] = params[:bushing_hv_h1]
	transformer_accessory[:bushing_hv_h2] = params[:bushing_hv_h2]
	transformer_accessory[:bushing_hv_h3] = params[:bushing_hv_h3]
	transformer_accessory[:bushing_lv_manu] = params[:bushing_lv_manu].to_i
	transformer_accessory[:bushing_lv_type] = params[:bushing_lv_type]
	transformer_accessory[:bushing_lv_year] = params[:bushing_lv_year].to_i
	transformer_accessory[:bushing_lv_x0] = params[:bushing_lv_x0]
	transformer_accessory[:bushing_lv_x1] = params[:bushing_lv_x1]
	transformer_accessory[:bushing_lv_x2] = params[:bushing_lv_x2]
	transformer_accessory[:bushing_lv_x3] = params[:bushing_lv_x3]
	transformer_accessory[:bushing_tv_manu] = params[:bushing_tv_manu].to_i
	transformer_accessory[:bushing_tv_type] = params[:bushing_tv_type]
	transformer_accessory[:bushing_tv_year] = params[:bushing_tv_year].to_i
	transformer_accessory[:bushing_tv_y1] = params[:bushing_tv_y1]
	transformer_accessory[:bushing_tv_y2] = params[:bushing_tv_y2]
	transformer_accessory[:bushing_tv_y3] = params[:bushing_tv_y3]

	transformer_accessory[:arrester_hv_manu] = params[:arrester_hv_manu].to_i
	transformer_accessory[:arrester_hv_type] = params[:arrester_hv_type]
	transformer_accessory[:arrester_hv_year] = params[:arrester_hv_year].to_i
	transformer_accessory[:arrester_hv_h1] = params[:arrester_hv_h1]
	transformer_accessory[:arrester_hv_h2] = params[:arrester_hv_h2]
	transformer_accessory[:arrester_hv_h3] = params[:arrester_hv_h3]
	transformer_accessory[:arrester_hv_isgap] = params[:arrester_hv_isgap].to_i
	transformer_accessory[:arrester_lv_manu] = params[:arrester_lv_manu].to_i
	transformer_accessory[:arrester_lv_type] = params[:arrester_lv_type]
	transformer_accessory[:arrester_lv_year] = params[:arrester_lv_year].to_i
	transformer_accessory[:arrester_lv_x1] = params[:arrester_lv_x1]
	transformer_accessory[:arrester_lv_x2] = params[:arrester_lv_x2]
	transformer_accessory[:arrester_lv_x3] = params[:arrester_lv_x3]
	transformer_accessory[:arrester_lv_isgap] = params[:arrester_lv_isgap].to_i
	transformer_accessory[:arrester_tv_manu] = params[:arrester_tv_manu].to_i
	transformer_accessory[:arrester_tv_type] = params[:arrester_tv_type]
	transformer_accessory[:arrester_tv_year] = params[:arrester_tv_year].to_i
	transformer_accessory[:arrester_tv_y1] = params[:arrester_tv_y1]
	transformer_accessory[:arrester_tv_y2] = params[:arrester_tv_y2]
	transformer_accessory[:arrester_tv_y3] = params[:arrester_tv_y3]
	transformer_accessory[:arrester_tv_isgap] = params[:arrester_tv_isgap].to_i

	transformer_accessory[:oltc_manu] = params[:oltc_manu].to_i
	transformer_accessory[:oltc_type] = params[:oltc_type]
	transformer_accessory[:oltc_year] = params[:oltc_year].to_i
	if create==1
		transformer_accessory.save
		tranformer_accessory1 = TransformerAccessory.transformer_getid_instantaneous()
		transformer[:transformer_accessories_id] = tranformer_accessory1.id
		transformer.update_attributes(transformer.attributes)
	else
		transformer_accessory.update_attributes(transformer_accessory.attributes)
		transformer.update_attributes(transformer.attributes)
	end
	if params[:image]!=nil
		TxImage.save(transformer.id.to_s,params[:image])
	end	
	redirect_to("/transformer_info/txlist")
  end

  def delete_transformer
	transformer = Transformer.get_transformer_id(params[:id])
	TransformerAccessory.delete(transformer.transformer_accessories_id)
	Transformer.delete(params[:id])
	redirect_to("/transformer_info/txlist")
  end
  
  def show_image
	@transformer = Transformer.get_transformer_id(params[:id])
  end
end
