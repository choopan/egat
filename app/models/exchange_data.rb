class ExchangeData < ActiveRecord::Base
  set_table_name "exchange_data"

  def self.get_ohi(egatsn)
    where("equipment_no = #{egatsn}").first.ohi
    rescue Exception
      return -1
  end

end