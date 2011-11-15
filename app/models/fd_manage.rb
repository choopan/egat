class FdManage < ActiveRecord::Base
	def self.get_manage()
	order("id")
    	     rescue Exception
      	return nil
  	end

	def self.get_manage_id(id)
	where("id = '#{id}'").first
    	rescue Exception
      	return nil
  	end

	def self.get_manage_part(manage)
	where("manage = '#{manage}'").first
    	rescue Exception
      	return nil
  	end
end
