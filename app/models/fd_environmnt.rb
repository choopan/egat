class FdEnvironmnt < ActiveRecord::Base
	def self.get_environment()
	order("id")
    	     rescue Exception
      	return nil
  end
end
