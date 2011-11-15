class FdEnvironmnt < ActiveRecord::Base
	def self.get_environment()
	order("id")
    	     rescue Exception
      	return nil
  	end
	def self.get_environment_id(id)
	where("id = '#{id}'").first
    	rescue Exception
      	return nil
  	end
end
