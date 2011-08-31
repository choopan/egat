class AddQuantityToUpdatePrice < ActiveRecord::Migration
  def self.up
    add_column :update_prices, :quantity, :integer
  end

  def self.down
    remove_column :update_prices, :quantity
  end
end
