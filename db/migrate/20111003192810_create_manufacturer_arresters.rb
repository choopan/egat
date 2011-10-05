class CreateManufacturerArresters < ActiveRecord::Migration
  def change
    create_table :manufacturer_arresters do |t|
      t.string :manufacturer

      t.timestamps
    end
  end
end
