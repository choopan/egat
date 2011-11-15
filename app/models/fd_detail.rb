class FdDetail < ActiveRecord::Base
	def self.get_detail()
	order("id")
    	     rescue Exception
      	return nil
  	end
	
	def self.get_detail_id(id)
	where("id = '#{id}'").first
    	rescue Exception
      	return nil
  	end
end
