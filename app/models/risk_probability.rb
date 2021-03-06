# == Schema Information
# Schema version: 20101205200640
#
# Table name: risk_probabilities
#
#  id                     :integer(4)      not null, primary key
#  start                  :integer(4)
#  end                    :integer(4)
#  probability_of_failure :string(255)
#  action                 :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class RiskProbability < ActiveRecord::Base  
  def self.get_y_scale
     yscale = []
     select("start, probability_of_failure").each { |e|
       yscale << ([e.start-1, e.probability_of_failure])
     }
     return yscale
  end
  
end
