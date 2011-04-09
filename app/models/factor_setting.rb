class FactorSetting < ActiveRecord::Base
	attr_accessible :intrate, :infrate, :loadavg, :loadloss, :projectlife, :zerolife, :power, :unavailability, :powerfactor, :user_id

end
