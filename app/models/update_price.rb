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

	def self.get_sumDC200()
		min = order("quantity").first
		max = order("quantity").last
		where("quantity != '#{min}' and quantity != '#{max}'").sum("quantity * price * 200")
	    rescue:
		return nil
	end

	def self.get_sumD()
		min = order("quantity").first
		max = order("quantity").last
		where("quantity != '#{min}' and quantity != '#{max}'").sum("quantity")
	    rescue:
		return nil
	end

	def self.get_avgD()
		min = order("quantity").first
		max = order("quantity").last
		where("quantity != '#{min}' and quantity != '#{max}'").average("quantity").to_f
	    rescue:
		return nil
	end


end
