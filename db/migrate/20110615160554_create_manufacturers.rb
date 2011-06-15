class CreateManufacturers < ActiveRecord::Migration
  def self.up
    create_table :manufacturers do |t|
      t.string :address
      t.integer :version
      t.string :name
      t.string :tel_no

      t.timestamps
    end
  end

  def self.down
    drop_table :manufacturers
  end
end
