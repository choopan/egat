class OltcControlCabinetsController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @oltc_control_cabinet = 
      OltcControlCabinet.where("visual_inspection_id = ?",
                               params[:visual_inspection_id]).first
  end

end
