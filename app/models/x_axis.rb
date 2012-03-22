class XAxis < ActiveRecord::Base
  def self.get_x_scale
     xscale = []
     select("start, importance").each { |e|
       xscale << ([e.start-1, e.importance])
     }
     return xscale
  end
end
