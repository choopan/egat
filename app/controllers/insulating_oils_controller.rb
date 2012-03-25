class InsulatingOilsController < ApplicationController

  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @insulating_oils = InsulatingOil.where("transformer_id =?", params[:transformer_id]).order("test_date DESC")
    respond_to do |format|
      format.html
      ActiveRecord::Base.include_root_in_json = false
      format.js {
        render :json => @insulating_oils.to_json(
          :only => [:id, :test_date, :transformer_id],
          :methods => [:xi_average_oltc, :xi_average_maintank, :avg_percent_power_factor_maintank,
                       :cor_percent_power_factor_maintank, :cor_percent_power_factor_oltc, :test_date_for_floth])
      }
    end
  end

  def new
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @insulating_oil = InsulatingOil.new
  end

  def create
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @insulating_oil = InsulatingOil.new(params[:insulating_oil])
    respond_to do |format|
      if @insulating_oil.save
        format.html {
          redirect_to(search_electrical_tests_path, :notice => "Data for Insulating Oil has been saved")
        }
      else
        format.html {render :action => 'new'}
      end
    end
  end

  def edit
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @insulating_oil = InsulatingOil.find(params[:id])
  end

  def update
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @insulating_oil = InsulatingOil.find(params[:id])
    respond_to do |format|
      if @insulating_oil.update_attributes(params[:insulating_oil])
        format.html {
          redirect_to(transformer_electrical_tests_path(@transformer),
                      :notice => 'Insulating Oil was successfully updated.')
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
    @insulating_oil = InsulatingOil.find(params[:id])
    @insulating_oil.destroy
    respond_to do |format|
      format.html {
        redirect_to(transformer_electrical_tests_path(@transformer))
      }
    end
  end

end
