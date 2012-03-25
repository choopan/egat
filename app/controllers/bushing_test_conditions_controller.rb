class BushingTestConditionsController < ApplicationController
  def index
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @bushing_test_conditions = BushingTestCondition.where(:testing => params[:testing])
    respond_to do |format|
      format.html
      ActiveRecord::Base.include_root_in_json = false
      format.js { render :json => @bushing_test_conditions.to_json(:include => [:color]) }
    end
  end
end
