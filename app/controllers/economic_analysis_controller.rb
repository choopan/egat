class EconomicAnalysisController < ApplicationController
  def index
   if session[:user].nil?
			redirect_to('/login/login')
		end
  end

end
