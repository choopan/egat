class CreateEcoOption2s < ActiveRecord::Migration
  def self.up
    create_table :eco_option2s do |t|
      t.float :new_transformer_price
      t.float :rated_power
      t.float :noload_loss
      t.float :loadloss
      t.float :pm
      t.float :mc_avg
      t.float :det_cost
      t.integer :user_id
      t.integer :transformer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :eco_option2s
  end
end
