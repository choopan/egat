class FdReason < ActiveRecord::Base
	def self.get_reason()
	order("id")
    	     rescue Exception
      	return nil
  	end

	def self.get_reason_id(id)
	where("id = '#{id}'").first
    	rescue Exception
      	return nil
  	end
end
