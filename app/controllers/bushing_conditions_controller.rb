class BushingConditionsController < ApplicationController

  def index
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @bushing_condition = BushingCondition.where("visual_inspection_id = ?", params[:visual_inspection_id]).first
  end

  def new
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @transformer = Transformer.find(params[:transformer_id])
    @bushing_condition = BushingCondition.new
  end

end
