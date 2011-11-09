class FdDetail < ActiveRecord::Base
	def self.get_detail()
	order("id")
    	     rescue Exception
      	return nil
  	end
end
