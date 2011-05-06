class CreateRepairInformations < ActiveRecord::Migration
  def self.up
    create_table :repair_informations do |t|
      t.integer :repair_age
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
      t.integer :user_id
      t.integer :transformer_id
      t.timestamps
    end
  end

  def self.down
    drop_table :repair_informations
  end
end
