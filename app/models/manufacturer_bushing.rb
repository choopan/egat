class ManufacturerBushing < ActiveRecord::Base
	def self.get_bushing()
		order("id")
    	     rescue Exception
      		return nil
  	end
	def self.get_bushing_id(id)
		where("id = '#{id}'").first
    	     rescue Exception
      		return nil
  	end
end
