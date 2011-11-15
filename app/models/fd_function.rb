class FdFunction < ActiveRecord::Base
	def self.get_function()
	order("id")
    	     rescue Exception
      	return nil
  	end

	def self.get_function_id(id)
	where("id = '#{id}'").first
    	rescue Exception
      	return nil
  	end
end
