class CreateIcOilInits < ActiveRecord::Migration
  def self.up
    create_table :ic_oil_inits do |t|
      t.date :Date
      t.integer :InitQuantity

      t.timestamps
    end
  end

  def self.down
    drop_table :ic_oil_inits
  end
end
