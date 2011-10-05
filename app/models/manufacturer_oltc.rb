class ManufacturerOltc < ActiveRecord::Base
	def self.get_oltc()
		order("id")
    	     rescue Exception
      		return nil
  	end
	def self.get_oltc_id(id)
		where("id = '#{id}'").first
    	     rescue Exception
      		return nil
  	end
end
