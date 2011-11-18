#encoding : UTF-8
@@bc_tx = "ข้อมูลหม้อแปลง"
@@bc_tx_link = "/transformer_info/txlist"

class TransformerInfoController < ApplicationController
  def txlist
        @breadcrumb_title = Array.new()
        @breadcrumb_link  = Array.new()
        @breadcrumb_title[0] = @@bc_tx
        @breadcrumb_link[0]  = @@bc_tx_link
        @breadcrumb_title[1] = 'หม้อแปลงไฟฟ้า'
        @breadcrumb_link[1]  = ''

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
    @breadcrumb_title = Array.new()
    @breadcrumb_link  = Array.new()
    @breadcrumb_title[0] = @@bc_tx
    @breadcrumb_link[0]  = @@bc_tx_link
    @breadcrumb_title[1] = 'หม้อแปลงไฟฟ้า'
    @breadcrumb_link[1]  = '/transformer_info/txlist'
    @breadcrumb_title[2] = 'เพิ่มหม้อแปลงไฟฟ้า'
    @breadcrumb_link[2]  = ''


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
        @breadcrumb_title = Array.new()
        @breadcrumb_link  = Array.new()
        @breadcrumb_title[0] = @@bc_tx
        @breadcrumb_link[0]  = @@bc_tx_link
        @breadcrumb_title[1] = 'การย้ายหม้อแปลง'
        @breadcrumb_link[1]  = ''

	@txtransfers = TransformerTransfer.order("id").paginate(:page => params[:page], :per_page => 25)
  end

  def txshowmove

	@breadcrumb_title = Array.new()
        @breadcrumb_link  = Array.new()
        @breadcrumb_title[0] = @@bc_tx
        @breadcrumb_link[0]  = @@bc_tx_link
        @breadcrumb_title[1] = 'การย้ายหม้อแปลง'
        @breadcrumb_link[1]  = '/transformer_info/txlistmove'
        @breadcrumb_title[2] = 'รายละเอียดการย้ายหม้อแปลง'
        @breadcrumb_link[2]  = ''

	@txmove = TransformerTransfer.find(params[:id])
  end

  def txaddmove
        @breadcrumb_title = Array.new()
        @breadcrumb_link  = Array.new()
        @breadcrumb_title[0] = @@bc_tx
        @breadcrumb_link[0]  = @@bc_tx_link
        @breadcrumb_title[1] = 'การย้ายหม้อแปลง'
        @breadcrumb_link[1]  = '/transformer_info/txlistmove'
        @breadcrumb_title[2] = 'เพิ่มการย้ายหม้อแปลง'
        @breadcrumb_link[2]  = ''

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
        @breadcrumb_title = Array.new()
        @breadcrumb_link  = Array.new()
        @breadcrumb_title[0] = @@bc_tx
        @breadcrumb_link[0]  = @@bc_tx_link
        @breadcrumb_title[1] = 'การย้ายหม้อแปลง'
        @breadcrumb_link[1]  = '/transformer_info/txlistmove'
        @breadcrumb_title[2] = 'แก้ไขการย้ายหม้อแปลง'
        @breadcrumb_link[2]  = ''


        @txmove = TransformerTransfer.find(params[:id])
	@stations = Station.order("name")
	@new_station = Station.where("full_name='#{@txmove.new_station}'").first.name
	dt = @txmove[:action_date].to_s.split(" ")
	da = dt[0].split("-")
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
	if params[:transformer_transfer][:id].nil?  #new record
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
	end


	#log transformer transfer
	params[:transformer_transfer][:new_station] = Station.where("name = '#{params[:transformer_transfer][:new_station]}'").first.full_name
	da = params[:transformer_transfer][:action_date].split("/") 
	params[:transformer_transfer][:action_date] = da[2] + "-" + da[1] + "-" + da[0]
	if params[:transformer_transfer][:id].nil?  #new record
		TransformerTransfer.create(params[:transformer_transfer])
	else
		record = TransformerTransfer.find(params[:transformer_transfer][:id])
		record.update_attributes(params[:transformer_transfer])
	end	
	#transformer_transfer_attribute.save

	redirect_to('/transformer_info/txlistmove')
  end


  def failurereport
        @breadcrumb_title = Array.new()
        @breadcrumb_link  = Array.new()
        @breadcrumb_title[0] = @@bc_tx
        @breadcrumb_link[0]  = @@bc_tx_link
        @breadcrumb_title[1] = 'รายงานความผิดปกติ'
        @breadcrumb_link[1]  = ''


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
	      xxx = FailureDatabase.get_failure_egatsn(@txinfo.egatsn)
		if !xxx.nil? and !xxx.blank?
		      @failures = FailureDatabase.get_failure_egatsn(@txinfo.egatsn).paginate(:page => params[:page], :per_page => 20)
		else
			@failures = nil
		end
	end
	
  end

  def addfailurereport

        @breadcrumb_title = Array.new()
        @breadcrumb_link  = Array.new()
        @breadcrumb_title[0] = @@bc_tx
        @breadcrumb_link[0]  = @@bc_tx_link
        @breadcrumb_title[1] = 'รายงานความผิดปกติ'
        @breadcrumb_link[1]  = '/transformer_info/failurereport?region='
        @breadcrumb_title[2] = 'เพิ่มรายงานความผิดปกติ'
        @breadcrumb_link[2]  = ''



	@tid = params[:tid]
	@txnams = Transformer.get_transformer_id(params[:tid])

	@region = Station.get_region(@txnams.station)


	@environments = FdEnvironmnt.get_environment()
	@num_environments = @environments.count

	@function = FdFunction.get_function()
	@num_function = @function.count
	
	@detail = FdDetail.get_detail()
	@num_detail = @detail.count
#-------------------------------------------------------------
	@group = FdGroupPart.get_group()
	@num_group = @group.count
	@oltcs = FdGroupPart.get_group_part("On - load Tap Changer")
	@bushings = FdGroupPart.get_group_part("Bushing")
	@arresters = FdGroupPart.get_group_part("Surge Arrester")
	if @num_group!=0
		@part = Array.new()
		@num_part = Array.new()
		for i in 0..@num_group-1 do
			@part[i] = FdPart.get_part(@group[i].id)
			@num_part[i] = @part[i].count
		end
	end
#----------------------------------------------------------------
	@mode = FdMode.get_mode()
	@num_mode = @mode.count

	@reason = FdReason.get_reason()
	@num_reason = @reason.count
	
	@manage = FdManage.get_manage()
	@num_manage = @manage.count
	@replaces = FdManage.get_manage_part("Replace")

	@manufacturer_oltc = ManufacturerOltc.get_oltc()
	@num_oltc = @manufacturer_oltc.count

	@manufacturer_bushing = ManufacturerBushing.get_bushing()
	@num_bushing = @manufacturer_bushing.count

	@manufacturer_arrester = ManufacturerArrester.get_arrester()
	@num_arrester = @manufacturer_arrester.count
  end

  def modify_failurere
	@region = params[:region]
	@tid = params[:tid]
	@txnams = Transformer.get_transformer_id(params[:tid])
	@failureres = FailureDatabase.get_failure_id(params[:id])

	@environments = FdEnvironmnt.get_environment()
	@num_environments = @environments.count
 
	@functions = FdFunction.get_function()
	@num_functions = @functions.count
	
	@details = FdDetail.get_detail()
	@num_details = @details.count

	@groups = FdGroupPart.get_group()
	@num_groups = @groups.count
	@oltcs = FdGroupPart.get_group_part("On - load Tap Changer")
	@bushings = FdGroupPart.get_group_part("Bushing")
	@arresters = FdGroupPart.get_group_part("Surge Arrester")

	@parts = Array.new()
	@num_parts = Array.new()
	for i in 0..@num_groups-1 do
		@parts[i] = FdPart.get_part(@groups[i].id)
		@num_parts[i] = @parts[i].count
	end

	@mode = FdMode.get_mode()
	@num_mode = @mode.count

	@reason = FdReason.get_reason()
	@num_reason = @reason.count

	@manage = FdManage.get_manage()
	@num_manage = @manage.count
	@replaces = FdManage.get_manage_part("Replace")

	@manufacturer_oltc = ManufacturerOltc.get_oltc()
	@num_oltc = @manufacturer_oltc.count

	@manufacturer_bushing = ManufacturerBushing.get_bushing()
	@num_bushing = @manufacturer_bushing.count

	@manufacturer_arrester = ManufacturerArrester.get_arrester()
	@num_arrester = @manufacturer_arrester.count
  end

  def update_failurereport
	failure = FailureDatabase.get_failure_id(params[:id])
	failure[:egatsn] = params[:egatsn]
	if params[:eventdate]!=""
		m1 = params[:eventdate].to_s.split("/")
		failure[:eventdate] = m1[2]+"-"+m1[1]+"-"+m1[0]
	end
	failure[:counterOLTC] = params[:counterOLTC].to_i
	environment = FdEnvironmnt.get_environment_id(params[:environment].to_i)
	if environment.environmnt.split(" ")[0]=="อื่นๆ"
		failure[:environment] = params[:environment_etc]
	else
		failure[:environment] = environment.environmnt
	end
	failurestatus = FdFunction.get_function_id(params[:failurestatus].to_i)
	if failurestatus.function.split(" ")[0]=="อื่นๆ"
		failure[:failurestatus] = params[:failurestatus_etc]
	else
		failure[:failurestatus] = failurestatus.function
	end
	failuredetail = FdDetail.get_detail_id(params[:failuredetail].to_i)
	if failuredetail.detail.split(" ")[0]=="อื่นๆ"
		failure[:failuredetail] = params[:failuredetail_etc]
	else
		failure[:failuredetail] = failuredetail.detail
	end

	if params[:downdatetime]!=""
		m2 = params[:downdatetime].to_s.split("/")
		failure[:downdatetime] = m2[2]+"-"+m2[1]+"-"+m2[0]+" "+params[:downtimehour].to_s+":"+params[:downtimeminute].to_s+":"+"00"
	end
	
	if params[:updatetime]!=""
		m3 = params[:updatetime].to_s.split("/")
		failure[:updatetime] = m3[2]+"-"+m3[1]+"-"+m3[0]+" "+params[:uptimehour].to_s+":"+params[:uptimeminute].to_s+":"+"00"
	end

	failure[:workorder] = params[:workorder]
	
	failuregroup = FdGroupPart.get_group_id(params[:failuregroup].to_i)
	failure[:failuregroup] = failuregroup.groupname
	
	if params[:failurepart]!=""
		failure[:failurepart] = params[:failurepart]
	else
		failure[:failurepart] = params[:failuredetail_etc]
	end

	failure[:failuremode] = params[:failuremode]
	
	failurereason = FdReason.get_reason_id(params[:failurereason].to_i)
	if failurereason.reason.split(" ")[0]=="อื่นๆ"
		failure[:failurereason] = params[:failurereason_etc]
	else
		failure[:failurereason] = failurereason.reason
	end

	managed = FdManage.get_manage_id(params[:manage].to_i)
	if managed.manage.split(" ")[0]=="อื่นๆ"
		failure[:manage] = params[:manage_etc]
	else
		failure[:manage] = managed.manage
	end
        
	if managed.manage=="Replace"
			
		if failuregroup.groupname=="On - load Tap Changer"
			transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
			transformers[:oltc_manufacturer] = params[:replace_manufacturer].to_i
			transformers[:oltc_type] = params[:oltc_type]
			transformers[:oltc_year] = params[:oltc_year].to_i
			transformers.update_attributes(transformers.attributes)
		end
		if failuregroup.groupname=="Bushing"
			if params[:failurepart]=="HV Bushing"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:bushing_hv_manu] = params[:replace_manufacturer].to_i
				transformers[:bushing_hv_type] = params[:bushing_hv_type]
				transformers[:bushing_hv_year] = params[:bushing_hv_year].to_i
				transformers[:bushing_hv_h0] = params[:bushing_hv_h0]
				transformers[:bushing_hv_h1] = params[:bushing_hv_h1]
				transformers[:bushing_hv_h2] = params[:bushing_hv_h2]
				transformers[:bushing_hv_h3] = params[:bushing_hv_h3]
				transformers.update_attributes(transformers.attributes)
			end
			if params[:failurepart]=="LV Bushing"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:bushing_lv_manu] = params[:replace_manufacturer].to_i
				transformers[:bushing_lv_type] = params[:bushing_lv_type]
				transformers[:bushing_lv_year] = params[:bushing_lv_year].to_i
				transformers[:bushing_lv_x0] = params[:bushing_lv_x0]
				transformers[:bushing_lv_x1] = params[:bushing_lv_x1]
				transformers[:bushing_lv_x2] = params[:bushing_lv_x2]
				transformers[:bushing_lv_x3] = params[:bushing_lv_x3]
				transformers.update_attributes(transformers.attributes)				
			end
			if params[:failurepart]=="TV Bushing"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:bushing_tv_manu] = params[:replace_manufacturer].to_i
				transformers[:bushing_tv_type] = params[:bushing_tv_type]
				transformers[:bushing_tv_year] = params[:bushing_tv_year].to_i
				transformers[:bushing_tv_y1] = params[:bushing_tv_y1]
				transformers[:bushing_tv_y2] = params[:bushing_tv_y2]
				transformers[:bushing_tv_y3] = params[:bushing_tv_y3]
				transformers.update_attributes(transformers.attributes)		
			end
		end
		if failuregroup.groupname=="Surge Arrester"
			if params[:failurepart]=="HV Arrester"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:arrester_hv_manu] = params[:replace_manufacturer].to_i
				transformers[:arrester_hv_type] = params[:arrester_hv_type]
				transformers[:arrester_hv_year] = params[:arrester_hv_year].to_i
				transformers[:arrester_hv_h1] = params[:arrester_hv_h1]
				transformers[:arrester_hv_h2] = params[:arrester_hv_h2]
				transformers[:arrester_hv_h3] = params[:arrester_hv_h3]
				transformers.update_attributes(transformers.attributes)
			end
			if params[:failurepart]=="LV Arrester"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:arrester_lv_manu] = params[:replace_manufacturer].to_i
				transformers[:arrester_lv_type] = params[:arrester_lv_type]
				transformers[:arrester_lv_year] = params[:arrester_lv_year].to_i
				transformers[:arrester_lv_x1] = params[:arrester_lv_x1]
				transformers[:arrester_lv_x2] = params[:arrester_lv_x2]
				transformers[:arrester_lv_x3] = params[:arrester_lv_x3]
				transformers.update_attributes(transformers.attributes)
			end
			if params[:failurepart]=="TV Arrester"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:arrester_tv_manu] = params[:replace_manufacturer].to_i
				transformers[:arrester_tv_type] = params[:arrester_tv_type]
				transformers[:arrester_tv_year] = params[:arrester_tv_year].to_i
				transformers[:arrester_tv_y1] = params[:arrester_tv_y1]
				transformers[:arrester_tv_y2] = params[:arrester_tv_y2]
				transformers[:arrester_tv_y3] = params[:arrester_tv_y3]
				transformers.update_attributes(transformers.attributes)
			end
		end
	end

	failure[:remark] = params[:remark]
	failure[:user] = params[:user]
	failure.update_attributes(failure.attributes)
	redirect_to("/transformer_info/failurereport?region="+ params[:region] +"&tid="+params[:tid])
	
  end

  def delete_failurere
	FailureDatabase.delete(params[:id])
	redirect_to("/transformer_info/failurereport?region="+ params[:region] +"&tid="+params[:tid])
  end

  def create_failurereport
	failure = FailureDatabase.new
	failure[:egatsn] = params[:egatsn]
	if params[:eventdate]!=""
		m1 = params[:eventdate].to_s.split("/")
		failure[:eventdate] = m1[2]+"-"+m1[1]+"-"+m1[0]
	end
	failure[:counterOLTC] = params[:counterOLTC].to_i
	environment = FdEnvironmnt.get_environment_id(params[:environment].to_i)
	if environment.environmnt.split(" ")[0]=="อื่นๆ"
		failure[:environment] = params[:environment_etc]
	else
		failure[:environment] = environment.environmnt
	end
	failurestatus = FdFunction.get_function_id(params[:failurestatus].to_i)
	if failurestatus.function.split(" ")[0]=="อื่นๆ"
		failure[:failurestatus] = params[:failurestatus_etc]
	else
		failure[:failurestatus] = failurestatus.function
	end
	failuredetail = FdDetail.get_detail_id(params[:failuredetail].to_i)
	if failuredetail.detail.split(" ")[0]=="อื่นๆ"
		failure[:failuredetail] = params[:failuredetail_etc]
	else
		failure[:failuredetail] = failuredetail.detail
	end

	if params[:downdatetime]!=""
		m2 = params[:downdatetime].to_s.split("/")
		failure[:downdatetime] = m2[2]+"-"+m2[1]+"-"+m2[0]+" "+params[:downtimehour].to_s+":"+params[:downtimeminute].to_s+":"+"00"
	end
	
	if params[:updatetime]!=""
		m3 = params[:updatetime].to_s.split("/")
		failure[:updatetime] = m3[2]+"-"+m3[1]+"-"+m3[0]+" "+params[:uptimehour].to_s+":"+params[:uptimeminute].to_s+":"+"00"
	end

	failure[:workorder] = params[:workorder]
	
	failuregroup = FdGroupPart.get_group_id(params[:failuregroup].to_i)
	failure[:failuregroup] = failuregroup.groupname
	
	if params[:failurepart]!=""
		failure[:failurepart] = params[:failurepart]
	else
		failure[:failurepart] = params[:failuredetail_etc]
	end

	failure[:failuremode] = params[:failuremode]
	
	failurereason = FdReason.get_reason_id(params[:failurereason].to_i)
	if failurereason.reason.split(" ")[0]=="อื่นๆ"
		failure[:failurereason] = params[:failurereason_etc]
	else
		failure[:failurereason] = failurereason.reason
	end

	managed = FdManage.get_manage_id(params[:manage].to_i)
	if managed.manage.split(" ")[0]=="อื่นๆ"
		failure[:manage] = params[:manage_etc]
	else
		failure[:manage] = managed.manage
	end

	if managed.manage=="Replace"
			
		if failuregroup.groupname=="On - load Tap Changer"
			transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
			transformers[:oltc_manufacturer] = params[:replace_manufacturer].to_i
			transformers[:oltc_type] = params[:oltc_type]
			transformers[:oltc_year] = params[:oltc_year].to_i
			transformers.update_attributes(transformers.attributes)
		end
		if failuregroup.groupname=="Bushing"
			if params[:failurepart]=="HV Bushing"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:bushing_hv_manu] = params[:replace_manufacturer].to_i
				transformers[:bushing_hv_type] = params[:bushing_hv_type]
				transformers[:bushing_hv_year] = params[:bushing_hv_year].to_i
				transformers[:bushing_hv_h0] = params[:bushing_hv_h0]
				transformers[:bushing_hv_h1] = params[:bushing_hv_h1]
				transformers[:bushing_hv_h2] = params[:bushing_hv_h2]
				transformers[:bushing_hv_h3] = params[:bushing_hv_h3]
				transformers.update_attributes(transformers.attributes)
			end
			if params[:failurepart]=="LV Bushing"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:bushing_lv_manu] = params[:replace_manufacturer].to_i
				transformers[:bushing_lv_type] = params[:bushing_lv_type]
				transformers[:bushing_lv_year] = params[:bushing_lv_year].to_i
				transformers[:bushing_lv_x0] = params[:bushing_lv_x0]
				transformers[:bushing_lv_x1] = params[:bushing_lv_x1]
				transformers[:bushing_lv_x2] = params[:bushing_lv_x2]
				transformers[:bushing_lv_x3] = params[:bushing_lv_x3]
				transformers.update_attributes(transformers.attributes)				
			end
			if params[:failurepart]=="TV Bushing"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:bushing_tv_manu] = params[:replace_manufacturer].to_i
				transformers[:bushing_tv_type] = params[:bushing_tv_type]
				transformers[:bushing_tv_year] = params[:bushing_tv_year].to_i
				transformers[:bushing_tv_y1] = params[:bushing_tv_y1]
				transformers[:bushing_tv_y2] = params[:bushing_tv_y2]
				transformers[:bushing_tv_y3] = params[:bushing_tv_y3]
				transformers.update_attributes(transformers.attributes)		
			end
		end
		if failuregroup.groupname=="Surge Arrester"
			if params[:failurepart]=="HV Arrester"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:arrester_hv_manu] = params[:replace_manufacturer].to_i
				transformers[:arrester_hv_type] = params[:arrester_hv_type]
				transformers[:arrester_hv_year] = params[:arrester_hv_year].to_i
				transformers[:arrester_hv_h1] = params[:arrester_hv_h1]
				transformers[:arrester_hv_h2] = params[:arrester_hv_h2]
				transformers[:arrester_hv_h3] = params[:arrester_hv_h3]
				transformers.update_attributes(transformers.attributes)
			end
			if params[:failurepart]=="LV Arrester"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:arrester_lv_manu] = params[:replace_manufacturer].to_i
				transformers[:arrester_lv_type] = params[:arrester_lv_type]
				transformers[:arrester_lv_year] = params[:arrester_lv_year].to_i
				transformers[:arrester_lv_x1] = params[:arrester_lv_x1]
				transformers[:arrester_lv_x2] = params[:arrester_lv_x2]
				transformers[:arrester_lv_x3] = params[:arrester_lv_x3]
				transformers.update_attributes(transformers.attributes)
			end
			if params[:failurepart]=="TV Arrester"
				transformers = Transformer.get_transformer_egatsn(params[:egatsn].to_i)
				transformers[:arrester_tv_manu] = params[:replace_manufacturer].to_i
				transformers[:arrester_tv_type] = params[:arrester_tv_type]
				transformers[:arrester_tv_year] = params[:arrester_tv_year].to_i
				transformers[:arrester_tv_y1] = params[:arrester_tv_y1]
				transformers[:arrester_tv_y2] = params[:arrester_tv_y2]
				transformers[:arrester_tv_y3] = params[:arrester_tv_y3]
				transformers.update_attributes(transformers.attributes)
			end
		end
	end
	failure[:remark] = params[:remark]
	failure[:user] = params[:user]
	failure.save
	redirect_to("/transformer_info/failurereport?region="+ params[:region] +"&tid="+params[:tid])
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
	@transformer[:bushing_hv_manu] = params[:bushing_hv_manu].to_i
	@transformer[:bushing_hv_type] = params[:bushing_hv_type]
	@transformer[:bushing_hv_year] = params[:bushing_hv_year].to_i
	@transformer[:bushing_hv_h0] = params[:bushing_hv_h0]
	@transformer[:bushing_hv_h1] = params[:bushing_hv_h1]
	@transformer[:bushing_hv_h2] = params[:bushing_hv_h2]
	@transformer[:bushing_hv_h3] = params[:bushing_hv_h3]
	@transformer[:bushing_lv_manu] = params[:bushing_lv_manu].to_i
	@transformer[:bushing_lv_type] = params[:bushing_lv_type]
	@transformer[:bushing_lv_year] = params[:bushing_lv_year].to_i
	@transformer[:bushing_lv_x0] = params[:bushing_lv_x0]
	@transformer[:bushing_lv_x1] = params[:bushing_lv_x1]
	@transformer[:bushing_lv_x2] = params[:bushing_lv_x2]
	@transformer[:bushing_lv_x3] = params[:bushing_lv_x3]
	@transformer[:bushing_tv_manu] = params[:bushing_tv_manu].to_i
	@transformer[:bushing_tv_type] = params[:bushing_tv_type]
	@transformer[:bushing_tv_year] = params[:bushing_tv_year].to_i
	@transformer[:bushing_tv_y1] = params[:bushing_tv_y1]
	@transformer[:bushing_tv_y2] = params[:bushing_tv_y2]
	@transformer[:bushing_tv_y3] = params[:bushing_tv_y3]

	@transformer[:arrester_hv_manu] = params[:arrester_hv_manu].to_i
	@transformer[:arrester_hv_type] = params[:arrester_hv_type]
	@transformer[:arrester_hv_year] = params[:arrester_hv_year].to_i
	@transformer[:arrester_hv_h1] = params[:arrester_hv_h1]
	@transformer[:arrester_hv_h2] = params[:arrester_hv_h2]
	@transformer[:arrester_hv_h3] = params[:arrester_hv_h3]
	@transformer[:arrester_hv_gapless] = params[:arrester_hv_gapless].to_i
	@transformer[:arrester_lv_manu] = params[:arrester_lv_manu].to_i
	@transformer[:arrester_lv_type] = params[:arrester_lv_type]
	@transformer[:arrester_lv_year] = params[:arrester_lv_year].to_i
	@transformer[:arrester_lv_x1] = params[:arrester_lv_x1]
	@transformer[:arrester_lv_x2] = params[:arrester_lv_x2]
	@transformer[:arrester_lv_x3] = params[:arrester_lv_x3]
	@transformer[:arrester_lv_gapless] = params[:arrester_lv_gapless].to_i
	@transformer[:arrester_tv_manu] = params[:arrester_tv_manu].to_i
	@transformer[:arrester_tv_type] = params[:arrester_tv_type]
	@transformer[:arrester_tv_year] = params[:arrester_tv_year].to_i
	@transformer[:arrester_tv_y1] = params[:arrester_tv_y1]
	@transformer[:arrester_tv_y2] = params[:arrester_tv_y2]
	@transformer[:arrester_tv_y3] = params[:arrester_tv_y3]
	@transformer[:arrester_tv_gapless] = params[:arrester_tv_gapless].to_i

	@transformer[:oltc_manufacturer] = params[:oltc_manufacturer].to_i
	@transformer[:oltc_type] = params[:oltc_type]
	@transformer[:oltc_year] = params[:oltc_year].to_i


	#tranformer_accessory1 = TransformerAccessory.transformer_getid_instantaneous()
	#@transformer[:transformer_accessories_id] = tranformer_accessory1.id
	#@transformer.save
	
	if params[:image]!=nil
		#transformer1 = Transformer.transformer_getid()
		m=params[:image].original_filename.to_s.split(".")
		@transformer[:picture] = params[:egatsn]+"."+m[1].to_s
		#transformer1[:picture] = transformer1.id.to_s+"."+m[1].to_s
		#transformer1.update_attributes(transformer1.attributes)
		TxImage.save(params[:egatsn],params[:image])
	end

	@transformer.save

	redirect_to("/transformer_info/txlist")
  end

  def modify_transformer
        @breadcrumb_title = Array.new()
        @breadcrumb_link  = Array.new()
        @breadcrumb_title[0] = @@bc_tx
        @breadcrumb_link[0]  = @@bc_tx_link
        @breadcrumb_title[1] = 'หม้อแปลงไฟฟ้า'
        @breadcrumb_link[1]  = '/transformer_info/txlist'
        @breadcrumb_title[2] = 'แก้ไขข้อมูลหม้อแปลงไฟฟ้า'
        @breadcrumb_link[2]  = ''

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
        @breadcrumb_title = Array.new()
        @breadcrumb_link  = Array.new()
        @breadcrumb_title[0] = @@bc_tx
        @breadcrumb_link[0]  = @@bc_tx_link
        @breadcrumb_title[1] = 'หม้อแปลงไฟฟ้า'
        @breadcrumb_link[1]  = '/transformer_info/txlist'
        @breadcrumb_title[2] = 'รายละเอียดหม้อแปลงไฟฟ้า'
        @breadcrumb_link[2]  = ''




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
end
