# == Schema Information
# Schema version: 20101205200640
#
# Table name: risks
#
#  id     :integer(4)      not null, primary key
#  start  :integer(4)
#  end    :integer(4)
#  risk   :string(255)
#  action :string(255)
#

class Risk < ActiveRecord::Base
  set_primary_key "id"
  def self.get_d_scale
     dscale = []
     select("[end]").order("id").each { |e|
       dscale << (e.end)
     }
     return dscale
  end
  
end
