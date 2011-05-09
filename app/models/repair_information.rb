class RepairInformation < ActiveRecord::Base
  belongs_to :transformer
  after_initialize :init

#  attr_accessible :repair_age, :pm, :mc_avg, :det_cost, :winding_type, :winding_cost, :bushing_type, :bushing_cost, :arrester_type, :arrester_cost, :oltc_type, :oltc_cost, :hotline_type, :hotline_cost, :cooling, :overhaul, :overhaul_and_refurbish, :rep_rubber_bag, :rep_bct, :others, :user_id, :transformer_id

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
