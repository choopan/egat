class ThermoScansController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @thermo_scan =
      ThermoScan.where("visual_inspection_id = ?",
                       params[:visual_inspection_id]).first
  end

end
