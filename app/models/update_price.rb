class UpdatePrice < ActiveRecord::Base
	after_initialize :init
	def init
		self.Year ||= 2009
		self.Price ||= 55
	end

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
		min = order("quantity").first.quantity
		max = order("quantity").last.quantity
		result = where("quantity != '#{min}' and quantity != '#{max}'")
                sum = 0
                for i in result
                  sum = sum + (i.quantity * i.Price * 200)
                end
                return sum
	    rescue:
		return nil
	end

	def self.get_sumD()
		min = order("quantity").first.quantity
		max = order("quantity").last.quantity
		where("quantity != '#{min}' and quantity != '#{max}'").sum("quantity").to_f
	    rescue:
		return nil
	end

	def self.get_avgD()
		min = order("quantity").first.quantity
		max = order("quantity").last.quantity
		where("quantity != '#{min}' and quantity != '#{max}'").average("quantity").to_f
	    rescue:
		return nil
	end

	def self.get_y3() 
		avgD = self.get_avgD()
		min = order("quantity").first.quantity
		max = order("quantity").last.quantity
	
		p1 = where("quantity != #{min} and quantity != #{max}").sum("power(quantity - #{avgD}, 2)").to_f
		p2 = where("quantity != #{min} and quantity != #{max}").count().to_i
		return (2.33 * Math.sqrt(p1/(p2 - 1)))
	end

end
