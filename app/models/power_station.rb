class PowerStation < ActiveRecord::Base
	#after_initialize :init
	#def init
	#	self.name ||= "AN"
	#	self.fullName ||= "AMNAT CHAROEN"
	#	self.region ||= "aa"
	#	self.kv ||= 22
	#end
	def self.get_station()
		order("id")
    	     rescue Exception
      		return nil
  	end

	def self.get_station_id(id)
		where("id = '#{id}'").first
    	     rescue Exception
      		return nil
  	end
end
