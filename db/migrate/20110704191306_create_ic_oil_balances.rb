class CreateIcOilBalances < ActiveRecord::Migration
  def self.up
    create_table :ic_oil_balances do |t|
      t.date :Date
      t.integer :Quantity
      t.integer :Price
      t.date :Recv_date

      t.timestamps
    end
  end

  def self.down
    drop_table :ic_oil_balances
  end
end
