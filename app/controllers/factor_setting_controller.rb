class FactorSettingController < ApplicationController

  def edit
	@factor = FactorSetting.find_by_user_id(1)
	if @factor.nil?
		@factor = FactorSetting.new
		@factor.intrate = 0
		@factor.infrate = 0
		@factor.loadavg = 0
		@factor.loadloss = 0
		@factor.projectlife = 0
		@factor.zerolife = 0
		@factor.power = 0
		@factor.unavailability = 0
		@factor.powerfactor = 0
		@factor.user_id = 1
	end
  end

  def update
	@factor = FactorSetting.find_by_user_id(1)
	params[:factor][:user_id] = 1
	if @factor.nil?
		@factor = FactorSetting.create(params[:factor])
	else
		@factor.update_attributes(params[:factor])
	end
	redirect_to(factor_setting_edit_path, :notice => 'บันทีกค่าเรียบร้อยแล้ว')
  end
end
