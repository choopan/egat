class CreateManufacturerOltcs < ActiveRecord::Migration
  def change
    create_table :manufacturer_oltcs do |t|
      t.string :manufacturer

      t.timestamps
    end
  end
end
