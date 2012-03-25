class RegulatingPtsController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @regulating_pt = RegulatingPt.where("visual_inspection_id = ?",
                     params[:visual_inspection_id]).first
  end

end
