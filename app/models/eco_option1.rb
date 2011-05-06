class EcoOption1 < ActiveRecord::Base
  belongs_to :transformer
  after_initialize :init

  def init
    self.transformer_price ||= 0
    self.noload_loss ||= 0
    self.loadloss ||= 0
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


  def self.get_option1_information(user_id, transformer_id)
    where("user_id = '#{user_id}' AND transformer_id = '#{transformer_id}'").first
    rescue:
      return nil
  end

end
