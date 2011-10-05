class CreateManufacturerBushings < ActiveRecord::Migration
  def change
    create_table :manufacturer_bushings do |t|
      t.string :manufacturer

      t.timestamps
    end
  end
end
