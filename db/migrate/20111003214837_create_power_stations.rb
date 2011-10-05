class CreatePowerStations < ActiveRecord::Migration
  def change
    create_table :power_stations do |t|
      t.string :name
      t.string :fullName
      t.string :region
      t.integer :kv

      t.timestamps
    end
  end
end
