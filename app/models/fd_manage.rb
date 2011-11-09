class FdManage < ActiveRecord::Base
	def self.get_manage()
	order("id")
    	     rescue Exception
      	return nil
  	end
end
