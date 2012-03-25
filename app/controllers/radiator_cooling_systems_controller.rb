class RadiatorCoolingSystemsController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @radiator_cooling_system =
      RadiatorCoolingSystem.where("visual_inspection_id = ?",
                                  params[:visual_inspection_id]).first
  end

end
