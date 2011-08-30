class UpdatePrice < ActiveRecord::Base
	#after_initialize :init
	#def init
		#self.Year ||= 2009
		#self.Price ||= 55
	#end

	def self.get_updateprice(year)
		where("Year = '#{year}'").first
	    rescue:
		return nil
         end

end
