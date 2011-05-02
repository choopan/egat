# == Schema Information
# Schema version: 20110502061514
#
# Table name: colors
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  value      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Color < ActiveRecord::Base
  has_many :oltc_oil_quality
  has_many :oil_quality
  has_many :oil_quality_factor
  has_many :aging_product_factor
  has_many :aging_product
  
end
