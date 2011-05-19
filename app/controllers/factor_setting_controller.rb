class FactorSettingController < ApplicationController
  def edit
    @factor = FactorSetting.find_by_user_id(1)
    if @factor.nil?
      @factor = FactorSetting.newrecord_user_id(1)   
    end
  end


  def update
	@factor = FactorSetting.find_by_user_id(1)
	@factor.update_attributes(params[:factor_setting])
	redirect_to(factor_setting_edit_path, :notice => 'บันทีกค่าเรียบร้อยแล้ว')
  end
end
