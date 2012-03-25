class SystemStabilitiesController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @system_stabilities = SystemStability.all
    respond_to do |format|
      format.html 
      format.xml { render :partial => "index.xml.builder", :layout => false }
    end
  end

  def update
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @system_stability = SystemStability.find(params[:id])
    params[:system_stability] = { 
      :value => params[:value], 
      :score => params[:score], 
      :score_message => params[:score_message] 
    }
    @system_stability.update_attributes(params[:system_stability])
  end

end
