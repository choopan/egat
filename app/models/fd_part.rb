class FdPart < ActiveRecord::Base
  def self.get_part(mainid)
	where("mainid = '#{mainid}'").all
    	rescue Exception
      	return nil
  end
end
