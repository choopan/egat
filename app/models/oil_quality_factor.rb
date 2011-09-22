# == Schema Information
# Schema version: 20110502061514
#
# Table name: oil_quality_factors
#
#  id         :integer(4)      not null, primary key
#  hi_factor  :integer(4)
#  condition  :string(255)
#  start      :integer(4)
#  end        :integer(4)
#  color_id   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class OilQualityFactor < ActiveRecord::Base
  belongs_to :color
end

# == Schema Information
#
# Table name: oil_quality_factors
#
#  id         :integer(4)      not null, primary key
#  hi_factor  :integer(4)
#  condition  :string(255)
#  start      :integer(4)
#  end        :integer(4)
#  color_id   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

