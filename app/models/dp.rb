# == Schema Information
# Schema version: 20110519020453
#
# Table name: dps
#
#  id         :integer(4)      not null, primary key
#  dp         :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Dp < ActiveRecord::Base
  attr_accessible :dp

  after_initialize :init

  def init
    self.dp ||= 250
  end

end
