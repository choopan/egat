class CreateTransformerPriceLosses < ActiveRecord::Migration
  def self.up
    create_table :transformer_price_losses do |t|
      t.float :transformer_price
      t.float :noload_loss
      t.float :loadloss

      t.timestamps
    end
  end

  def self.down
    drop_table :transformer_price_losses
  end
end
