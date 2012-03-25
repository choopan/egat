class OltcCompartmentsController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @oltc_compartment = OltcCompartment.where("visual_inspection_id = ?",
                                              params[:visual_inspection_id]).first
  end

end
