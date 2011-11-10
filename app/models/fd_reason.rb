class FdReason < ActiveRecord::Base
	def self.get_reason()
	order("id")
    	     rescue Exception
      	return nil
  	end
end
