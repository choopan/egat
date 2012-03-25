# == Schema Information
# Schema version: 20101205200640
#
# Table name: importance_indices
#
#  id         :integer(4)      not null, primary key
#  start      :integer(4)
#  end        :integer(4)
#  importance :string(255)
#  action     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class ImportanceIndex < ActiveRecord::Base
    def self.get_x_scale
     xscale = []
     select("start, importance").each { |e|
       xscale << ([e.start-1, e.importance])
     }
     return xscale
  end
end
