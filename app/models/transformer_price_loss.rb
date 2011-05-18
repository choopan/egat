# == Schema Information
# Schema version: 20110518235716
#
# Table name: transformer_price_losses
#
#  id                :integer(4)      not null, primary key
#  transformer_price :integer(4)
#  noload_loss       :integer(4)
#  loadloss          :integer(4)
#  created_at        :datetime
#  updated_at        :datetime
#  transformer_id    :integer(4)
#  user_id           :integer(4)
#

class TransformerPriceLoss < ActiveRecord::Base
  belongs_to :transformer

  def self.get_transformer_price_loss(user_id, transformer_id)
    where("user_id = '#{user_id}' AND transformer_id = '#{transformer_id}'").first
    rescue:
      return nil
  end

end
