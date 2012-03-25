class SocialAspectsController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @social_aspects = SocialAspect.all
    respond_to do |format|
      format.html 
      format.xml { render :partial => "index.xml.builder", :layout => false }
    end
  end

  def update
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @social_aspect = SocialAspect.find(params[:id])
    params[:social_aspect] = { 
      :value => params[:value], 
      :score => params[:score], 
      :score_message => params[:score_message] 
    }
    @social_aspect.update_attributes(params[:social_aspect])
  end

end
