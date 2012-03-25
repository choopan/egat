#encoding : UTF-8
class TransformerInformationsController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	else
    @xscale = XAxis.get_x_scale.to_json
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
        @transformer_informations = TransformerInformation.includes(:transformer => [:brand]).all
      end

    end
	respond_to do |format|
      format.html
      format.js { render :json => {:data_points => @data_points, :xscale => @xscale}}
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

  def adjust_x_color
	if session[:user].nil?
		redirect_to('/login/login')
	end
	   @xdata = XAxis.all
  end

  def adjust_y_color
	if session[:user].nil?
		redirect_to('/login/login')
	end
  end

  def adjust_risk
	if session[:user].nil?
		redirect_to('/login/login')
	end
	   @risks = Risk.all
  end
  
  def update_x_color_table
	if session[:user].nil?
		redirect_to('/login/login')
	end
    for i in 1..3 do
      xdata = XAxis.find(i)
      xdata[:start] = params["start_"+i.to_s].to_i
      xdata[:end] = params["end_"+i.to_s].to_i
      xdata[:importance] = params["importance_"+i.to_s].to_s
      xdata[:action] = params["action_"+i.to_s].to_s     
      xdata[:color] = params["color_"+i.to_s].to_s
      xdata.update_attributes(xdata.attributes)
    end
    redirect_to(adjust_x_color_transformer_informations_url, :notice => 'บันทึกค่าเรียบร้อยแล้ว')
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
    redirect_to(adjust_risk_transformer_informations_url, :notice => 'บันทึกค่าเรียบร้อยแล้ว')
  end
  
  
  def adjust_criteria
	if session[:user].nil?
		redirect_to('/login/login')
	end
	 #@load_pattern_factor = LoadPatternFactor.all

  end
  
  def x_axis
	if session[:user].nil?
		redirect_to('/login/login')
	end
   # if request.xhr?
   #     @data_points = @data_points.to_json    
    #end
  end
end