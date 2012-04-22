#encoding : utf-8
class FactorSettingController < ApplicationController
  def edit
	  if session[:user].nil?
			redirect_to('/ptu3/login/login')
			return
	  end
	@userid = User.get_user(session[:user])
    @factor = FactorSetting.find_by_user_id(1)
	
    if @factor.nil?
	  
      @factor = FactorSetting.newrecord_user_id(1)   
    end
  end


  def update
	  if session[:user].nil?
			redirect_to('/ptu3/login/login')
			return
	  end
   if User.get_user(session[:user]).priv9==1
	@factor = FactorSetting.find_by_user_id(1)
	if @factor.update_attributes(params[:factor_setting])
		redirect_to(edit_factor_setting_index_path, :notice => 'บันทีกค่าเรียบร้อยแล้ว')
	else
		redirect_to(edit_factor_setting_index_path, :notice => @factor.errors)
	end
   else
	redirect_to('/ptu3/factor_setting/edit')
   end
  end
end
