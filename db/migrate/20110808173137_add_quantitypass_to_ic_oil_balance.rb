class AddQuantitypassToIcOilBalance < ActiveRecord::Migration
  def self.up
    add_column :ic_oil_balances, :Quantitypass, :integer
  end

  def self.down
    remove_column :ic_oil_balances, :Quantitypass
  end
end
