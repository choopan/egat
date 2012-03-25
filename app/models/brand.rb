# == Schema Information
# Schema version: 20101205200640
#
# Table name: brands
#
#  id            :integer(4)      not null, primary key
#  created_at    :datetime
#  updated_at    :datetime
#  name          :string(255)
#  score         :integer(4)
#  score_message :string(255)
#

class Brand < ActiveRecord::Base
  has_many :transformer

  def self.get_tx()
		order("id")
    	     rescue Exception
      		return nil
  end

  def self.get_tx_id(id)
		where("id = '#{id}'").first
    	     rescue Exception
      		return nil
  	end
end