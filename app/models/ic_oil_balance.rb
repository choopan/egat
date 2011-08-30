class IcOilBalance < ActiveRecord::Base
	after_initialize :init
	def init
		#self.Date ||= "2552-12-01"
		#self.Quantity ||=212
		#self.Price ||=55
		#self.Recv_date ||= "2552-12-02"
		#self.Quantitypass ||= 200
	end

	 def self.get_icoilbalance()
		order("Date")
	    rescue:
		return nil
         end

	def self.get_icoilbalance_id(id)
		where("id = '#{id}'").first
    	     rescue:
      		return nil
  	end

	def self.get_oilwithdraw(year)
                endyear = year + 1
		where("Date BETWEEN '#{year}-01-01' AND '#{endyear}-01-01'")
	      rescue:
		return nil
	end

	def self.historical_data(year)
		startyear=year-2
		where("Date BETWEEN '#{startyear}-01-01' AND '#{year}-01-01'")
	    rescue:
		return nil
	end
end

# == Schema Information
#
# Table name: ic_oil_balances
#
#  id         :integer(4)      not null, primary key
#  Date       :date
#  Quantity   :integer(4)
#  Price      :integer(4)
#  Recv_date  :date
#  created_at :datetime
#  updated_at :datetime
#

