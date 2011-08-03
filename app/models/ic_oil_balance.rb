class IcOilBalance < ActiveRecord::Base
	after_initialize :init
	def init
		self.Date ||= "2552-12-01"
		self.Quantity ||=212
		self.Price ||=55
		self.Recv_date ||= "2552-12-02"
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

