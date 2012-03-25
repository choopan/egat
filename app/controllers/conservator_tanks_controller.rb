class ConservatorTanksController < ApplicationController  
  def index
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @conservator_tank =
      ConservatorTank.where("visual_inspection_id = ?", params[:visual_inspection_id]).first
  end

end
