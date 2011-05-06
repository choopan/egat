class CreateEcoOption1s < ActiveRecord::Migration
  def self.up
    create_table :eco_option1s do |t|
      t.integer :user_id
      t.integer :transformer_id
      t.integer :transformer_price
      t.integer :noload_loss
      t.integer :loadloss
      t.integer :pm
      t.integer :mc_avg
      t.integer :det_cost
      t.string :winding_type
      t.integer :winding_cost
      t.string :bushing_type
      t.integer :bushing_cost
      t.string :arrester_type
      t.integer :arrester_cost
      t.string :oltc_type
      t.integer :oltc_cost
      t.string :hotline_type
      t.integer :hotline_cost
      t.integer :cooling
      t.integer :overhaul
      t.integer :overhaul_and_refurbish
      t.integer :rep_rubber_bag
      t.integer :rep_bct
      t.integer :others

      t.timestamps
    end
  end

  def self.down
    drop_table :eco_option1s
  end
end
