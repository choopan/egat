class FdGroupPart < ActiveRecord::Base
	def self.get_group()
	order("id")
    	     rescue Exception
      	return nil
  	end

	def self.get_group_id(id)
	where("id = '#{id}'").first
    	rescue Exception
      	return nil
  	end

	def self.get_group_part(group)
	where("groupname = '#{group}'").first
    	rescue Exception
      	return nil
  	end
end
