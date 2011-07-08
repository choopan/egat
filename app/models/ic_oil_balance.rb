class IcOilBalance < ActiveRecord::Base

	 def self.get_icoilbalance()
		order("Date")
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

