class LoginController < ApplicationController
  def login
  end

  def confirm
	data_user = User.get_user(params[:user])
	if !data_user.nil?
		if params[:passwd]==data_user.password
			session[:user]=data_user.login
			redirect_to(transformer_informations_path)
		else
			session[:user]=nil
			redirect_to(login_login_index_path)
		end
	else
		session[:user]=nil
		redirect_to(login_login_index_path)
	end
  end

  def logout
	session[:user]=nil
	redirect_to(login_login_index_path)
  end

end
