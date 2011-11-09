class FdMode < ActiveRecord::Base
	def self.get_mode()
	order("id")
    	     rescue Exception
      	return nil
  	end
end
