#encoding: utf-8
class DpController < ApplicationController
  @@bc_ic = "ค่าประเมินอายุ"
  @@bc_ic_link = "#"
  def edit
	@breadcrumb_title = Array.new()
	@breadcrumb_link  = Array.new()
	@breadcrumb_title[0] = @@bc_ic
	@breadcrumb_link[0]  = @@bc_ic_link
	@breadcrumb_title[1] = 'DB Limit'
	@breadcrumb_link[1]  = ""
	  if session[:user].nil?
			redirect_to('/ptu3/login/login')
			return
	  end
	@userid = User.get_user(session[:user])
	@x = session[:username]
    @dp = Dp.find(1)
    rescue Exception
      @dp = Dp.new
      @dp.save
  end


  def update
	  if session[:user].nil?
			redirect_to('/ptu3/login/login')
			return
	  end
   if User.get_user(session[:user]).priv9==1
        @dp = Dp.find(1)
        @dp.update_attributes(params[:dp])
        redirect_to(edit_dp_index_path, :notice => 'บันทีกค่าเรียบร้อยแล้ว')
    else
		redirect_to('/ptu3/dp/edit')
	end
  end
end
