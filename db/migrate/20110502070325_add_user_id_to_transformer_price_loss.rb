class AddUserIdToTransformerPriceLoss < ActiveRecord::Migration
  def self.up
    add_column :transformer_price_losses, :user_id, :integer
  end

  def self.down
    remove_column :transformer_price_losses, :user_id
  end
end
