class MainTanksController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @main_tank = MainTank.where("visual_inspection_id = ?",
                                params[:visual_inspection_id]).first
  end

end
