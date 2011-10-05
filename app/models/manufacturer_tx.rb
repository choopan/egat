class ManufacturerTx < ActiveRecord::Base
	def self.get_tx()
		order("id")
    	     rescue Exception
      		return nil
  	end
	def self.get_tx_id(id)
		where("id = '#{id}'").first
    	     rescue Exception
      		return nil
  	end
end
