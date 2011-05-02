class AddTransformerIdtoTransformerPriceLoss < ActiveRecord::Migration
  def self.up
    add_column :transformer_price_losses, :transformer_id, :integer
  end

  def self.down
    remove_column :transformer_price_losses, :transformer_id
  end
end
