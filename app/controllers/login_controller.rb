class LoginController < ApplicationController
  def login
	
  end

  def confirm
	data_user = User.get_user(params[:user])
	if !data_user.nil?
		if params[:passwd]==data_user.password
			session[:user]=data_user.login
			redirect_to('/weibull/weibull_detail')
		else
			session[:user]=nil
			redirect_to('/login/login')
		end
	else
		session[:user]=nil
		redirect_to('/login/login')
	end
  end

end
