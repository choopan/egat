class ApplicationUsesController < ApplicationController
  def index
    if session[:user].nil?
			redirect_to('/login/login')
		end
    @application_uses = ApplicationUse.all
    respond_to do |format|
      format.html 
      format.xml { render :partial => "index.xml.builder", :layout => false }
    end
  end

  def update
    if session[:user].nil?
			redirect_to('/login/login')
		end
    @application_use = ApplicationUse.find(params[:id])
    params[:application_use] = { 
      :value => params[:value], 
      :score => params[:score], 
      :score_message => params[:score_message] 
    }
    @application_use.update_attributes(params[:application_use])
  end

end
