class CreateOilCalculates < ActiveRecord::Migration
  def self.up
    create_table :oil_calculates do |t|
      t.float :Y1
      t.float :Y2
      t.float :Y3
      t.float :Y4
      t.float :Y5
      t.integer :W

      t.timestamps
    end
  end

  def self.down
    drop_table :oil_calculates
  end
end
