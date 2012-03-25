class HotLineOilFiltersController < ApplicationController
  def index
   if session[:user].nil?
		redirect_to('/login/login')
	end
    @hot_line_oil_filter = HotLineOilFilter.where("visual_inspection_id = ?", params[:visual_inspection_id]).first
  end

end
