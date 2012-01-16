class User < ActiveRecord::Base
  def self.get_user(user)
	where("login = '#{user}'").first
    	rescue Exception
      	return nil
  end
end
