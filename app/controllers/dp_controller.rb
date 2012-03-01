#encoding: utf-8
class DpController < ApplicationController
  def edit
   if session[:user].nil?
			redirect_to('/login/login')
	end
	@userid = User.get_user(session[:user])
	@x = session[:username]
    @dp = Dp.find(1)
    rescue Exception
      @dp = Dp.new
      @dp.save
  end


  def update
   if User.get_user(session[:user]).priv9==1
        @dp = Dp.find(1)
        @dp.update_attributes(params[:dp])
        redirect_to(edit_dp_index_path, :notice => 'บันทีกค่าเรียบร้อยแล้ว')
    else
		redirect_to('/dp/edit')
	end
  end
end
