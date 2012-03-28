#encoding : UTF-8
class TransformerInformationsController < ApplicationController
  def index    
	if session[:user].nil?
		redirect_to('/login/login')
	else
    @xscale = ImportanceIndex.get_x_scale.to_json
    @yscale = RiskProbability.get_y_scale.to_json
    @dscale = Risk.get_d_scale.to_json


    if request.xhr?
      if params[:region]
        @stations = Station.find_all_by_region(params[:region])
        names = @stations.collect { |s| s.name }
        transformers = Transformer.find_all_by_transformer_name_initials(names)
        @data_points = TransformerInformation.get_data_points_by_transformers(transformers)
        @data_points = @data_points.to_json
      elsif params[:transformer_id]
        transformer_id = params[:transformer_id]
        @data_points = TransformerInformation.get_data_points_by_transformer_id(transformer_id)
        @data_points = @data_points.to_json
      else
        @data_points = TransformerInformation.get_data_points
      end
    else
      if params[:transformer_ids]
        transformer_ids = params[:transformer_ids].split(',').map { |x| x.to_i }
        @data_points = TransformerInformation.get_data_points_by_transformer_ids(transformer_ids)
        @data_points = @data_points.to_json
      elsif params[:region]
        @stations = Station.find_all_by_region(params[:region])
        names = @stations.collect { |s| s.name }
        transformers = Transformer.find_all_by_transformer_name_initials(names)
        @transformer_informations = TransformerInformation.find_all_by_transformers(transformers)
      else
        @transformer_informations = TransformerInformation.includes(:transformer => [:brand]).where("recent = 1").order("transformer.transformer_name")
      end

    end
	respond_to do |format|
      format.html
      format.js { render :json => {:data_points => @data_points, :xscale => @xscale, :yscale => @yscale, :dscale => @dscale}}
    end
	end
  end

  def show
	if session[:user].nil?
		redirect_to('/login/login')
	end
    if request.xhr?
      @no_js = true
      @no_header = true
      @no_footer = true
    end
    @transformer_information = TransformerInformation.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer_information = TransformerInformation.new
    @transformer_information.build_load_pattern_per_year
  end

  def create
	if session[:user].nil?
		redirect_to('/login/login')
	end
	  m=params[:transformer_information][:recorded_date].split('/')
    params[:transformer_information][:recorded_date]=m[2]+"-"+m[1]+"-"+m[0]
    @transformer_information =
      TransformerInformation.new(params[:transformer_information])
    if @transformer_information.save
      flash[:notice] = "Successfully created transformer information."
      redirect_to transformer_informations_url
    else
      render :action => 'new'
    end
  end

  def edit
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer_information = TransformerInformation.find(params[:id])
  end

  def update
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer_information = TransformerInformation.find(params[:id])
    if @transformer_information.update_attributes(params[:transformer_information])
      flash[:notice] = "Successfully updated transformer information."
      redirect_to transformer_informations_url
    else
      render :action => 'edit'
    end
  end

  def destroy
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer_information = TransformerInformation.find(params[:id])
    @transformer_information.destroy
    flash[:notice] = "Successfully destroyed transformer information."
    redirect_to transformer_informations_url
  end

  def redirect_to_edit_if_exists
	if session[:user].nil?
		redirect_to('/login/login')
	end
    if request.xhr?
      @transformer_information = TransformerInformation.find_by_transformer_id(params[:id])
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def search
	if session[:user].nil?
		redirect_to('/login/login')
	end
    if params[:transformer_id]
      @transformer_informations = TransformerInformation.find_all_by_transformer_id(params[:transformer_id])
    end
  end

  def importance_and_risk_table
	if session[:user].nil?
		redirect_to('/login/login')
	end
    if request.xhr?
      @no_js = true
      @no_header = true
      @no_footer = true
    end
    @transformer_information = TransformerInformation.find(params[:id])
    respond_to do |format|
      format.html
    end
  end
  
  def adjust
    adjust_x_color
    adjust_y_color
    adjust_criteria
    adjust_risk
  end

  def adjust_x_color
    if session[:user].nil?
      redirect_to('/login/login')
    end
    @xdata = ImportanceIndex.all
  end

  def adjust_y_color
	 if session[:user].nil?
		redirect_to('/login/login')
	 end
   @ydata = RiskProbability.all
  end

  def adjust_risk
	if session[:user].nil?
		redirect_to('/login/login')
	end
	   @risks = Risk.all
  end
  
  def update_y_color_table
    for i in 1..3 do
      ydata = RiskProbability.find(i)
      ydata[:start] = params["start_"+i.to_s].to_i
      ydata[:end] = params["end_"+i.to_s].to_i
      ydata[:probability_of_failure] = params["prf_"+i.to_s].to_s
      ydata[:action] = params["action_"+i.to_s].to_s     
      ydata.update_attributes(ydata.attributes)
    end
    redirect_to('/transformer_informations/adjust#yscale', :notice => 'บันทึกค่าเรียบร้อยแล้ว')    
  end
  
  def update_x_color_table
	if session[:user].nil?
		redirect_to('/login/login')
	end
    for i in 1..3 do
      xdata = ImportanceIndex.find(i)
      xdata[:start] = params["start_"+i.to_s].to_i
      xdata[:end] = params["end_"+i.to_s].to_i
      xdata[:importance] = params["importance_"+i.to_s].to_s
      xdata[:action] = params["action_"+i.to_s].to_s     
      xdata[:color] = params["color_"+i.to_s].to_s
      xdata.update_attributes(xdata.attributes)
    end
    redirect_to('/transformer_informations/adjust#xscale', :notice => 'บันทึกค่าเรียบร้อยแล้ว')    
  end
  
  def update_risk_table
	if session[:user].nil?
		redirect_to('/login/login')
	end
    for i in 1..5 do
      risk = Risk.find(i)
      risk[:start] = params["start_"+i.to_s].to_i
      risk[:end] = params["end_"+i.to_s].to_i
      risk[:risk] = params["risk_"+i.to_s].to_s
      risk[:action] = params["action_"+i.to_s].to_s     
      risk.update_attributes(risk.attributes)
    end
    redirect_to('/transformer_informations/adjust#risk', :notice => 'บันทึกค่าเรียบร้อยแล้ว')    
  end
  
  
  def adjust_criteria
    if session[:user].nil?
      redirect_to('/login/login')
    end


	 @lpf = LoadPatternFactor.order("score")
	 @imp_weight = ImportanceWeight.select("weight").order("id")
	 @system_locations = SystemLocation.select("value").order("score")
	 @n1s = N1Criteria.select("value").order("score")
	 @system_stability = SystemStability.select("value").order("score")
   @application_uses = ApplicationUse.select("value").order("score")
   @bus_voltage = BusVoltage.order("id") #lv first, then hv
   @lvs = SystemFaultLevel.where("bus_voltage_id = #{@bus_voltage[0].id}").order("score")
   @hvs = SystemFaultLevel.where("bus_voltage_id = #{@bus_voltage[1].id}").order("score")
   @pfo = ProbabilityOfForceOutage.order("score")
   @social_aspects = SocialAspect.select("value").order("score")
   @public_images = PublicImage.select("value").order("score")
   @pollutions = Pollution.select("value").order("score")
  end
  
  def update_criteria_table
    ######################### update load_pattern_factor table
    lpfs = LoadPatternFactor.order("id")
    i = 1
    lpfs.each { |lpf|
       if i == 1
         lpf[:end] = params["lpfe_" + i.to_s].to_i
       elsif i == lpfs.size
         lpf[:start] = params["lpfs_" + i.to_s].to_i
       else  
         lpf[:start] = params["lpfs_" + i.to_s].to_i
         lpf[:end] = params["lpfe_" + i.to_s].to_i
       end
       lpf.update_attributes(lpf.attributes)
       i = i + 1
    }
    #update load_pattern_factor weight (importance_weight no 1)
    lpf_weight = ImportanceWeight.where("no = 1").first
    lpf_weight[:weight] = params["lpf_weight"].to_i
    lpf_weight.update_attributes(lpf_weight.attributes)
  

    ######################### update SystemLocation
    system_locations = SystemLocation.order("score")

    i = 1
    system_locations.each { |p|
         p[:value] = params["system_location_" + i.to_s]
         p.update_attributes(p.attributes)
       i = i + 1
    }
    #update system location weight (importance_weight no 2)
    sysloc_weight = ImportanceWeight.where("no = 2").first
    sysloc_weight[:weight] = params["system_location_weight"].to_i
    sysloc_weight.update_attributes(sysloc_weight.attributes)


    ######################### update N1 Criteria
    n1s = N1Criteria.order("score")

    i = 1
    n1s.each { |p|
         p[:value] = params["n1_" + i.to_s]
         p.update_attributes(p.attributes)
       i = i + 1
    }
    #update n1 criteria weight (importance_weight no 3)
    n1_weight = ImportanceWeight.where("no = 3").first
    n1_weight[:weight] = params["n1_weight"].to_i
    n1_weight.update_attributes(n1_weight.attributes)

    ######################### update System Stability
    system_stabilities = SystemStability.order("score")

    i = 1
    system_stabilities.each { |p|
         p[:value] = params["system_stability_" + i.to_s]
         p.update_attributes(p.attributes)
       i = i + 1
    }
    #update system stability weight (importance_weight no 4)
    system_stability_weight = ImportanceWeight.where("no = 4").first
    system_stability_weight[:weight] = params["system_stability_weight"].to_i
    system_stability_weight.update_attributes(system_stability_weight.attributes)


    ######################### update application use
    app_uses = ApplicationUse.order("score")

    i = 1
    app_uses.each { |p|
         p[:value] = params["app_use_" + i.to_s]
         p.update_attributes(p.attributes)
       i = i + 1
    }
    #update application use weight (importance_weight no 5)
    app_use_weight = ImportanceWeight.where("no = 5").first
    app_use_weight[:weight] = params["app_use_weight"].to_i
    app_use_weight.update_attributes(app_use_weight.attributes)


    ######################### update System Fault
    bus_voltages = BusVoltage.order("id") #lv first, then hv
    lvs = SystemFaultLevel.where("bus_voltage_id = #{bus_voltages[0].id}").order("score")
    hvs = SystemFaultLevel.where("bus_voltage_id = #{bus_voltages[1].id}").order("score")
    
    #update mva
    bus_voltages[0][:end] = params[:bus_voltage_hv].to_i
    bus_voltages[0].update_attributes(bus_voltages[0].attributes) 
    bus_voltages[1][:start] = params[:bus_voltage_hv].to_i + 1
    bus_voltages[1].update_attributes(bus_voltages[1].attributes) 
    
    i = 1
    lvs.each { |p|
       if i == 1
         p[:end] = params["lvse_" + i.to_s].to_i
       elsif i == lvs.size
         p[:start] = params["lvss_" + i.to_s].to_i
       else  
         p[:start] = params["lvss_" + i.to_s].to_i
         p[:end] = params["lvse_" + i.to_s].to_i
       end
       p.update_attributes(p.attributes)
       i = i + 1
    }

    i = 1
    hvs.each { |p|
       if i == 1
         p[:end] = params["hvse_" + i.to_s].to_i
       elsif i == hvs.size
         p[:start] = params["hvss_" + i.to_s].to_i
       else  
         p[:start] = params["hvss_" + i.to_s].to_i
         p[:end] = params["hvse_" + i.to_s].to_i
       end
       p.update_attributes(p.attributes)
       i = i + 1
    }

    #update bus voltage weight (importance_weight no 6)
    bus_voltage_weight = ImportanceWeight.where("no = 6").first
    bus_voltage_weight[:weight] = params["bus_voltage_weight"].to_i
    bus_voltage_weight.update_attributes(bus_voltage_weight.attributes)


    ######################### update Probability of Outage
    pfos = ProbabilityOfForceOutage.order("score")
    i = 1
    pfos.each { |p|
       if i == 1
         if params["pfo_e_" + i.to_s] == ''
           p[:end] = nil
         else
           p[:end] = params["pfo_e_" + i.to_s].to_i
         end
       elsif i == pfos.size
         if params["pfo_s_" + i.to_s] == ''
           p[:start] = nil
         else
           p[:start] = params["pfo_s_" + i.to_s].to_i
         end
       else  
         if params["pfo_s_" + i.to_s] == ''
           p[:start] = nil
         else
           p[:start] = params["pfo_s_" + i.to_s].to_i
         end
         if params["pfo_e_" + i.to_s] == ''
           p[:end] = nil
         else
           p[:end] = params["pfo_e_" + i.to_s].to_i
         end
       end
       p.update_attributes(p.attributes)
       i = i + 1
    }
    #update PFO weight (importance_weight no 7)
    pfo_weight = ImportanceWeight.where("no = 7").first
    pfo_weight[:weight] = params["pfo_weight"].to_i
    pfo_weight.update_attributes(pfo_weight.attributes)


    #update damage of property weight (importance_weight no 8)
    dmg_weight = ImportanceWeight.where("no = 8").first
    dmg_weight[:weight] = params["dmg_weight"].to_i
    dmg_weight.update_attributes(dmg_weight.attributes)


    ######################### update social aspect
    soc_as = SocialAspect.order("score")

    i = 1
    soc_as.each { |p|
         p[:value] = params["soc_as_" + i.to_s]
         p.update_attributes(p.attributes)
       i = i + 1
    }
    #update social aspect weight (importance_weight no 9)
    soc_as_weight = ImportanceWeight.where("no = 9").first
    soc_as_weight[:weight] = params["soc_as_weight"].to_i
    soc_as_weight.update_attributes(soc_as_weight.attributes)

   ######################### update public image
    pub_imgs = PublicImage.order("score")

    i = 1
    pub_imgs.each { |p|
         p[:value] = params["pub_img_" + i.to_s]
         p.update_attributes(p.attributes)
       i = i + 1
    }
    #update public image weight (importance_weight no 10)
    pub_img_weight = ImportanceWeight.where("no = 10").first
    pub_img_weight[:weight] = params["pub_img_weight"].to_i
    pub_img_weight.update_attributes(pub_img_weight.attributes)


  ######################### update pollution
    pollutions = Pollution.order("score")

    i = 1
    pollutions.each { |p|
         p[:value] = params["pollution_" + i.to_s]
         p.update_attributes(p.attributes)
       i = i + 1
    }
    #update pollution weight (importance_weight no 11)
    pollution_weight = ImportanceWeight.where("no = 11").first
    pollution_weight[:weight] = params["pollution_weight"].to_i
    pollution_weight.update_attributes(pollution_weight.attributes)

    #update brand weight (importance_weight no 12)
    brand_weight = ImportanceWeight.where("no = 12").first
    brand_weight[:weight] = params["brand_weight"].to_i
    brand_weight.update_attributes(brand_weight.attributes)

    redirect_to('/transformer_informations/adjust#criteria', :notice => 'บันทึกค่าเรียบร้อยแล้ว')    
  end

end