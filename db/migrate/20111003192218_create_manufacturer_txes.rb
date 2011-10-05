class CreateManufacturerTxes < ActiveRecord::Migration
  def change
    create_table :manufacturer_txes do |t|
      t.string :manufacturer

      t.timestamps
    end
  end
end
