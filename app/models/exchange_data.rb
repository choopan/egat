class ExchangeData < ActiveRecord::Base
  set_table_name "exchange_data"

  def self.get_ohi(id)
    where("id = #{id}").first.ohi
  end

end