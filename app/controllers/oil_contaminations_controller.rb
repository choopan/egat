class OilContaminationsController < ApplicationController
  
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oil_contamination = OilContamination.where(:transformer_id => params[:transformer_id])
    respond_to do |format|
      format.html
      ActiveRecord::Base.include_root_in_json = false
      format.js { render :json => @oil_contamination.to_json(:methods => [:test_date_for_floth]) }
    end
  end

  def new
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oil_contamination = OilContamination.new
  end

  def create
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oil_contamination = OilContamination.new(params[:oil_contamination])
    respond_to do |format|
      if @oil_contamination.save
        format.html {
          redirect_to(transformer_oil_input_index_path(@transformer),
                      :notice => 'Data for Oil Contamination has been added.')
        }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def edit
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find_by_id(params[:transformer_id])
    @oil_contamination = OilContamination.find(params[:id])
  end

  def update
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oil_contamination = OilContamination.find(params[:id])
    respond_to do |format|
      if @oil_contamination.update_attributes(params[:oil_contamination])
        format.html {
          redirect_to(transformer_oil_input_index_path(@transformer),
                      :notice => 'Oil Contamination was successfully updated.')
        }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oil_contamination = Furan.find(params[:id])
    @oil_contamination.destroy
    respond_to do |format|
      format.html {
        redirect_to(transformer_oil_input_index_path(@transformer))
      }
    end
  end


end
