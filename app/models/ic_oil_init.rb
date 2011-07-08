class IcOilInit < ActiveRecord::Base
# == Schema Information
#
# Table name: ic_oil_inits
#
#  id           :integer(4)      not null, primary key
#  Date         :date
#  InitQuantity :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#
after_initialize :init
	def init
		self.Date ||= "2552-12-01"
		self.InitQuantity ||= 212
	end

	def self.get_icoilinit()
		first
	    rescue:
		return nil
         end
end


