# == Schema Information
# Schema version: 20110518233347
#
# Table name: factor_settings
#
#  id             :integer(4)      not null, primary key
#  intrate        :float
#  infrate        :float
#  loadavg        :float
#  loadloss       :float
#  projectlife    :integer(4)
#  zerolife       :integer(4)
#  power          :float
#  unavailability :float
#  powerfactor    :float
#  user_id        :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

class FactorSetting < ActiveRecord::Base
  attr_accessible :intrate, :infrate, :loadavg, :loadloss, :projectlife, :zerolife, :power, :unavailability, :powerfactor, :user_id

  after_initialize :init

  def init
    self.intrate ||= 4
    self.infrate  ||= 2
    self.loadavg  ||= 70
    self.loadloss ||= 3
    self.projectlife ||= 55
    self.zerolife ||= 25
    self.power  ||= 3
    self.unavailability ||= 0.001
    self.powerfactor ||= 0.9
    self.user_id ||= 0
  end

  def self.newrecord_user_id(userid)
    newrecord = self.new
    newrecord.user_id = userid
    newrecord.save
    return newrecord
  end

end
