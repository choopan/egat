class CreateIcAllcosts < ActiveRecord::Migration
  def self.up
    create_table :ic_allcosts do |t|
      t.float :oc1
      t.float :oc2
      t.float :oc3
      t.float :oc4
      t.float :oc5
      t.float :oc6
      t.float :oc7
      t.float :oc8
      t.float :oc9
      t.float :oc10
      t.float :x1
      t.float :x2
      t.float :x3
      t.float :x4
      t.float :x5
      t.float :x6
      t.float :x7

      t.timestamps
    end
  end

  def self.down
    drop_table :ic_allcosts
  end
end
