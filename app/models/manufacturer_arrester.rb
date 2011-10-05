class ManufacturerArrester < ActiveRecord::Base
	def self.get_arrester()
		order("id")
    	     rescue Exception
      		return nil
  	end
	def self.get_arrester_id(id)
		where("id = '#{id}'").first
    	     rescue Exception
      		return nil
  	end
end
