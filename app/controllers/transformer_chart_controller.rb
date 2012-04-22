#encoding: utf-8
class TransformerChartController < ApplicationController
@@bc_ic = "รายงาน"
@@bc_ic_link = "#"

  def chart
	if session[:user].nil?
		redirect_to('/ptu3/login/login')
	end
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'รายงานมาตรฐาน'
	@breadcrumb_link[1]  = ""
  end

  def select_chart
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'รายงานมาตรฐาน'
	@breadcrumb_link[1]  = "/ptu3/transformer_chart/chart"
	@breadcrumb_title[2] = 'กราฟแสดงผล'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/ptu3/login/login')
	end
	if params[:count]==nil
		@count=1
	else
		@count=params[:count].to_i+1
	end


	if params[:charts]=='1'
		@titles="จำนวนหม้อแปลงเมื่อเทียบกับอายุการใช้งาน"
                @graphdata, @graphpercent = Transformer.graph1(params[:start_old1], params[:end_old1])
	elsif params[:charts]=='2'
		@titles = "จำนวนหม้อแปลงกับบริษัทผู้ผลิต"
                @graphdata, @graphpercent = Transformer.graph2
	elsif params[:charts]=='3'
		@titles="จำนวนหม้อแปลงในแต่ละเขตสถานีไฟฟ้า"
                @graphdata, @graphpercent = Transformer.graph3
	elsif params[:charts]=='4'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามกลุ่มอุปกรณ์"
                @graphdata, @graphpercent = FailureDatabase.graph4
	elsif params[:charts]=='5'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามชิ้นส่วนอุปกรณ์"
                @graphdata, @graphpercent = FailureDatabase.graph5
	elsif params[:charts]=='6'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามรายละเอียดของความผิดปกติ"
                @graphdata, @graphpercent = FailureDatabase.graph6
	elsif params[:charts]=='7'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามสาเหตุที่แท้จริง"
                @graphdata, @graphpercent = FailureDatabase.graph7
	elsif params[:charts]=='8'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามระดับความรุนแรง"
                @graphdata, @graphpercent = FailureDatabase.graph8
	elsif params[:charts]=='9'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามบริษัทผู้ผลิต"
                @graphdata, @graphpercent = FailureDatabase.graph9
	elsif params[:charts]=='10'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามเขต"
                @graphdata, @graphpercent = FailureDatabase.graph10
	else
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามอายุการใช้งาน"
                @graphdata, @graphpercent = FailureDatabase.graph11(params[:start_old2], params[:end_old2])
	end
  end

  def report_transformer
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'รายงานข้อมูลหม้อแปลงไฟฟ้า'
	@breadcrumb_link[1]  = ""
	if session[:user].nil?
		redirect_to('/ptu3/login/login')
	end
        @regions  = Station.group("region").order("region").select("region")
        if params[:report2_area] == "" or params[:report2_area].nil?
          if params[:report2_station] == "" or params[:report2_station].nil?
              if params[:report2_manufacturer] == "" or params[:report2_manufacturer].nil?            
                @stations = Station.order("name")
                @manus    = Brand.order("name")
                @txnames  = Transformer.order("transformer_name")
              else
                @stations = Station.order("name")
                @manus    = Brand.order("name")
                @txnames  = Transformer.find_by_sql("SELECT id, transformer_name FROM transformer WHERE brand_id=#{params[:report2_manufacturer]} ORDER BY transformer_name")                
              end  
         else
              if params[:report2_manufacturer] == "" or params[:report2_manufacturer].nil?            
                @stations = Station.order("name")
                @manus    = Transformer.find_by_sql("SELECT DISTINCT manuId as id, A.name AS name FROM transformer LEFT OUTER JOIN (SELECT DISTINCT id as manuId, name FROM brands) A ON transformer.brand_id = A.manuId  WHERE station='#{params[:report2_station]}' ORDER BY A.name")
                @txnames  = Transformer.find_by_sql("SELECT id, transformer_name FROM transformer where station='#{params[:report2_station]}' ORDER BY transformer_name")
              else
                @stations = Station.order("name")
                @manus    = Transformer.find_by_sql("SELECT DISTINCT manuId as id, A.name AS name FROM transformer LEFT OUTER JOIN (SELECT DISTINCT id as manuId, name FROM brands) A ON transformer.brand_id = A.manuId  WHERE station='#{params[:report2_station]}' ORDER BY A.name")
                @txnames  = Transformer.find_by_sql("SELECT id, transformer_name FROM transformer WHERE station='#{params[:report2_station]}' and brand_id=#{params[:report2_manufacturer]} ORDER BY transformer_name")
              end
         end
        else
          if params[:report2_station] == "" or params[:report2_station].nil?
              if params[:report2_manufacturer] == "" or params[:report2_manufacturer].nil?            
                @stations = Station.where("region = '#{params[:report2_area]}'").order("name")
                @manus    = Transformer.find_by_sql("SELECT DISTINCT manuId as id, A.name AS name FROM transformer LEFT OUTER JOIN (SELECT DISTINCT id as manuId, name FROM brands) A ON transformer.brand_id = A.manuId  LEFT OUTER JOIN (SELECT name, region FROM stations) B ON transformer.station = B.name WHERE B.region='#{params[:report2_area]}' ORDER BY A.name")
                @txnames  = Transformer.find_by_sql("SELECT transformer.id AS id, transformer.transformer_name AS transformer_name FROM transformer LEFT OUTER JOIN (SELECT DISTINCT name, region FROM stations) A ON transformer.station = A.name WHERE A.region='#{params[:report2_area]}' ORDER BY A.name")
              else
                @stations = Station.where("region = '#{params[:report2_area]}'").order("name")             
                @manus    = Transformer.find_by_sql("SELECT DISTINCT manuId as id, A.name AS name FROM transformer LEFT OUTER JOIN (SELECT DISTINCT id as manuId, name FROM brands) A ON transformer.brand_id = A.manuId  LEFT OUTER JOIN (SELECT name, region FROM stations) B ON transformer.station = B.name WHERE B.region='#{params[:report2_area]}' ORDER BY A.name")
                @txnames  = Transformer.find_by_sql("SELECT transformer.id AS id, transformer.transformer_name AS transformer_name FROM transformer LEFT OUTER JOIN (SELECT DISTINCT name, region FROM stations) A ON transformer.station = A.name WHERE A.region='#{params[:report2_area]}' AND brand_id='#{params[:report2_manufacturer]}' ORDER BY A.name")
              end  
         else
              if params[:report2_manufacturer] == "" or params[:report2_manufacturer].nil?            
                @stations = Station.where("region = '#{params[:report2_area]}'").order("name")               
                @manus    = Transformer.find_by_sql("SELECT DISTINCT manuId AS id, A.name AS name FROM transformer LEFT OUTER JOIN (SELECT DISTINCT id as manuId, name FROM brands) A ON transformer.brand_id = A.manuId  WHERE station='#{params[:report2_station]}' ORDER BY A.name")
                @txnames  = Transformer.find_by_sql("SELECT id, transformer_name FROM transformer where station='#{params[:report2_station]}' ORDER BY transformer_name")
  
              else
                @stations = Station.where("region = '#{params[:report2_area]}'").order("name")              
                @manus    = Transformer.find_by_sql("SELECT DISTINCT manuId AS id, A.name AS name FROM transformer LEFT OUTER JOIN (SELECT DISTINCT id as manuId, name FROM brands) A ON transformer.brand_id = A.manuid  WHERE station='#{params[:report2_station]}' ORDER BY A.name")
                @txnames  = Transformer.find_by_sql("SELECT id, transformer_name FROM transformer WHERE station='#{params[:report2_station]}' and brand_id=#{params[:report2_manufacturer]} ORDER BY transformer_name")
              end
         end
        end    
  end

  def report_damaged
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'รายงานข้อมูลหม้อแปลงไฟฟ้า'
	@breadcrumb_link[1]  = "/ptu3/transformer_chart/report_transformer"
	@breadcrumb_title[2] = 'กราฟแสดงผล'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/ptu3/login/login')
	end
    if params[:count]==nil
	 	 @count=1
	  else
		  @count=params[:count].to_i+1
	  end
    if params[:group]=='0'   #region
      @titles="Region Graph"
      #@graphdata, @graphpercent = Transformer.graph_numtx_per_region(params[:report2_area], params[:report2_station], params[:report2_manufacturer], params[:report2_transformer])
      @graphdata, @graphpercent = Transformer.graph_numtx_per_region(params[:report2_area], params[:report2_station], params[:report2_manufacturer], params[:report2_transformer])

    elsif params[:group]=='1' #station
      @titles = "Station Graph"
      @graphdata, @graphpercent = Transformer.graph_numtx_per_station(params[:report2_area], params[:report2_station], params[:report2_manufacturer], params[:report2_transformer])
    elsif params[:group]=='2' #manufacturing
      @titles="Manufacturer"
      @graphdata, @graphpercent = Transformer.graph_numtx_per_manufacturer(params[:report2_area], params[:report2_station], params[:report2_manufacturer], params[:report2_transformer])
 
      #@graphdata, @graphpercent = Transformer.graph3
    else #tx name
      @titles="Tx Name Graph"
      @graphdata, @graphpercent = Transformer.graph_numtx_per_txname(params[:report2_area], params[:report2_station], params[:report2_manufacturer], params[:report2_transformer])
 
    end
  end

  def report_transformer_f
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'รายงานข้อมูลความเสียหาย'
	@breadcrumb_link[1]  = ""
	if session[:user].nil?
		redirect_to('/ptu3/login/login')
	end
    @regions  = Station.group("region").order("region").select("region")
    @stations = Station.order("name")
    @txnames  = Transformer.order("transformer_name")
    @environments = FdEnvironmnt.order("environmnt")
    @functions = FdFunction.order("id")
    @details = FdDetail.get_detail()
    @groups = FdGroupPart.get_group()
    @parts = FdPart.order("id")
    @modes = FdMode.get_mode()
    @reasons = FdReason.get_reason()  
    @manages = FdManage.get_manage()
    @manufacturers    = Brand.order("name")
  end

  def report_damaged_f
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'รายงานข้อมูลความเสียหาย'
	@breadcrumb_link[1]  = "/ptu3/transformer_chart/report_transformer_f"
	@breadcrumb_title[2] = 'กราฟแสดงผล'
	@breadcrumb_link[2]  = ""
	if session[:user].nil?
		redirect_to('/ptu3/login/login')
	end
	  if params[:count]==nil
		  @count=1
	  else
		  @count=params[:count].to_i+1
	  end
	  
	  if params[:group] == '0'
	   @graphdata, @graphpercent = FailureDatabase.graph_numfailure_per_region(params[:start_year], params[:end_year],params[:report3_area], params[:report3_station], params[:report3_manufacturer], params[:report3_transformer], params[:report3_environment], params[:report3_function], params[:report3_detail], params[:report3_group], params[:report3_part], params[:report3_mode], params[:report3_reason], params[:report3_manage])
    elsif params[:group] == '1'
     @graphdata, @graphpercent = FailureDatabase.graph_numfailure_per_station(params[:start_year], params[:end_year],params[:report3_area], params[:report3_station], params[:report3_manufacturer], params[:report3_transformer], params[:report3_environment], params[:report3_function], params[:report3_detail], params[:report3_group], params[:report3_part], params[:report3_mode], params[:report3_reason], params[:report3_manage])
    elsif params[:group] == '2'
     @graphdata, @graphpercent = FailureDatabase.graph_numfailure_per_manufacturer(params[:start_year], params[:end_year],params[:report3_area], params[:report3_station], params[:report3_manufacturer], params[:report3_transformer], params[:report3_environment], params[:report3_function], params[:report3_detail], params[:report3_group], params[:report3_part], params[:report3_mode], params[:report3_reason], params[:report3_manage])
    else
     @graphdata, @graphpercent = FailureDatabase.graph_numfailure_per_txname(params[:start_year], params[:end_year],params[:report3_area], params[:report3_station], params[:report3_manufacturer], params[:report3_transformer], params[:report3_environment], params[:report3_function], params[:report3_detail], params[:report3_group], params[:report3_part], params[:report3_mode], params[:report3_reason], params[:report3_manage])
 
    end
  end
end
