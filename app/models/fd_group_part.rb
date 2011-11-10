class FdGroupPart < ActiveRecord::Base
	def self.get_group()
	order("id")
    	     rescue Exception
      	return nil
  	end
end
