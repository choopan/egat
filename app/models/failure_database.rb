class FailureDatabase < ActiveRecord::Base
	def self.get_failure_egatsn(egatsn)
	where("egatsn = '#{egatsn}'")
    	rescue Exception
      	return nil
  	end

	def self.get_failure_id(id)
		where("id = '#{id}'").first
    		rescue Exception
      		return nil
  	end
	
end
