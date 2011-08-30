class CreateUpdatePrices < ActiveRecord::Migration
  def self.up
    create_table :update_prices do |t|
      t.integer :Year
      t.float :Price

      t.timestamps
    end
  end

  def self.down
    drop_table :update_prices
  end
end
