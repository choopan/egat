# == Schema Information
# Schema version: 20110502061514
#
# Table name: factor_settings
#
#  id             :integer(4)      not null, primary key
#  intrate        :float
#  infrate        :float
#  loadavg        :float
#  loadloss       :float
#  projectlife    :float
#  zerolife       :float
#  power          :float
#  unavailability :float
#  powerfactor    :float
#  user_id        :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

class FactorSetting < ActiveRecord::Base
	attr_accessible :intrate, :infrate, :loadavg, :loadloss, :projectlife, :zerolife, :power, :unavailability, :powerfactor, :user_id

end
