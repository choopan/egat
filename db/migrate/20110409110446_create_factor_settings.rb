class CreateFactorSettings < ActiveRecord::Migration
  def self.up
    create_table :factor_settings do |t|
      t.float :intrate
      t.float :infrate
      t.float :loadavg
      t.float :loadloss
      t.float :projectlife
      t.float :zerolife
      t.float :power
      t.float :unavailability
      t.float :powerfactor
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :factor_settings
  end
end
