class PowerUsage < ActiveRecord::Base
	def self.get_usage()
		order("id")
    	     rescue Exception
      		return nil
  	end
	def self.get_usage_id(id)
		where("id = '#{id}'").first
    	     rescue Exception
      		return nil
  	end
end
