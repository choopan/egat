class IcAllcost < ActiveRecord::Base
        after_initialize :init
        def init
                #self.Date ||= "2552-12-01"
                #self.Quantity ||=212
                #self.Price ||=55
                #self.Recv_date ||= "2552-12-02"
                #self.Quantitypass ||= 200
        end

         def self.get_payment_list()
                first
            rescue Exception
                return nil
         end

end
