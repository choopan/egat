class OilCalculate < ActiveRecord::Base
	after_initialize :init
	def init
		self.Y1 ||= 175
		self.Y2 ||= 169
		self.Y3 ||= 51
		self.Y4 ||= 2
		self.Y5 ||= 288492
		self.W ||= 90
	end
	def self.get_period()
		first
	    rescue:
		return nil
         end


end
