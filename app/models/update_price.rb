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

	 def self.get_updatepriceid(id)
		where("id= '#{id}'").first
	    rescue:
		return nil
	 end

	 def self.get_updatepriceall()
		order("Year")
	    rescue:
		return nil
	 end
end
