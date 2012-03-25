class TransformerControlCabinetsController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer_control_cabinet =
      TransformerControlCabinet.where("visual_inspection_id = ?",
                                      params[:visual_inspection_id]).first
  end

end
