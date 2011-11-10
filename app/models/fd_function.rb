class FdFunction < ActiveRecord::Base
	def self.get_function()
	order("id")
    	     rescue Exception
      	return nil
  	end
end
