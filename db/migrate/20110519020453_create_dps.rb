class CreateDps < ActiveRecord::Migration
  def self.up
    create_table :dps do |t|
      t.integer :dp

      t.timestamps
    end
  end

  def self.down
    drop_table :dps
  end
end
