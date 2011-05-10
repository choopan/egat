# == Schema Information
# Schema version: 20110506080233
#
# Table name: repair_informations
#
#  id                     :integer(4)      not null, primary key
#  repair_age             :integer(4)
#  pm                     :integer(4)
#  mc_avg                 :integer(4)
#  det_cost               :integer(4)
#  winding_type           :string(255)
#  winding_cost           :integer(4)
#  bushing_type           :string(255)
#  bushing_cost           :integer(4)
#  arrester_type          :string(255)
#  arrester_cost          :integer(4)
#  oltc_type              :string(255)
#  oltc_cost              :integer(4)
#  hotline_type           :string(255)
#  hotline_cost           :integer(4)
#  cooling                :integer(4)
#  overhaul               :integer(4)
#  overhaul_and_refurbish :integer(4)
#  rep_rubber_bag         :integer(4)
#  rep_bct                :integer(4)
#  others                 :integer(4)
#  user_id                :integer(4)
#  transformer_id         :integer(4)
#  created_at             :datetime
#  updated_at             :datetime
#

class RepairInformation < ActiveRecord::Base
  belongs_to :transformer
  after_initialize :init

  attr_accessible :repair_age, :pm, :mc_avg, :det_cost, :winding_type, :winding_cost, :bushing_type, :bushing_cost, :arrester_type, :arrester_cost, :oltc_type, :oltc_cost, :hotline_type, :hotline_cost, :cooling, :overhaul, :overhaul_and_refurbish, :rep_rubber_bag, :rep_bct, :others, :user_id, :transformer_id

  def init
    self.repair_age ||= 0
    self.pm ||= 0
    self.mc_avg ||= 0
    self.det_cost ||= 0
    self.winding_type ||= "new"
    self.winding_cost ||= 0
    self.bushing_type ||= "OIP"
    self.bushing_cost ||= 0
    self.arrester_type ||= "Gap"
    self.arrester_cost ||= 0
    self.oltc_type ||= "Oil 1 Chamber"
    self.oltc_cost ||= 0
    self.hotline_type ||= "1-2 Chamber"
    self.hotline_cost ||= 0
    self.cooling ||= 0
    self.overhaul ||= 0
    self.overhaul_and_refurbish ||= 0
    self.rep_rubber_bag ||= 0
    self.rep_bct ||= 0
    self.others ||= 0
  end


  def self.get_repair_information(user_id, transformer_id)
    where("user_id = '#{user_id}' AND transformer_id = '#{transformer_id}'").first
    rescue:
      return nil
  end

end
