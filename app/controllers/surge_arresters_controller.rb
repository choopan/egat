class SurgeArrestersController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @surge_arrester =
      SurgeArrester.where("visual_inspection_id = ?",
                          params[:visual_inspection_id]).first
  end

end
