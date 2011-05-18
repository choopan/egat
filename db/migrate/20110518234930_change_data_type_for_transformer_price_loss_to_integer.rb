class ChangeDataTypeForTransformerPriceLossToInteger < ActiveRecord::Migration
  def self.up
    change_table :transformer_price_losses do |t|
      t.change :transformer_price, :integer
      t.change :noload_loss, :integer
      t.change :loadloss, :integer
    end
  end

  def self.down
    change_table :transformer_price_losses do |t|
      t.change :transformer_price, :float
      t.change :noload_loss, :float
      t.change :loadloss, :float
    end
  end
end
