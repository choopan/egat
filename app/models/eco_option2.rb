# == Schema Information
# Schema version: 20110518235716
#
# Table name: eco_option2s
#
#  id                    :integer(4)      not null, primary key
#  new_transformer_price :integer(4)
#  rated_power           :integer(4)
#  noload_loss           :integer(4)
#  loadloss              :integer(4)
#  pm                    :integer(4)
#  mc_avg                :integer(4)
#  det_cost              :integer(4)
#  user_id               :integer(4)
#  transformer_id        :integer(4)
#  created_at            :datetime
#  updated_at            :datetime
#

class EcoOption2 < ActiveRecord::Base
belongs_to :transformer
  after_initialize :init

  def init
    self.new_transformer_price ||= 0
    self.rated_power ||= 0
    self.noload_loss ||= 0
    self.loadloss ||= 0
    self.pm ||= 0
    self.mc_avg ||= 0
    self.det_cost ||= 0
  end


  def self.get_option2_information(user_id, transformer_id)
    where("user_id = '#{user_id}' AND transformer_id = '#{transformer_id}'").first
    rescue:
      return nil
  end

end
