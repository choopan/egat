class OilCalculate < ActiveRecord::Base
	after_initialize :init
	def init
		self.Y1 ||= 0.0
		self.Y2 ||= 0.0
		self.Y3 ||= 0.0
		self.Y4 ||= 0.0
		self.Y5 ||= 0.0
		self.W ||= 90
	end
	def self.get_period()
		first
	    rescue Exception
		return nil
         end


end
