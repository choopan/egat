class CreatePowerUsages < ActiveRecord::Migration
  def change
    create_table :power_usages do |t|
      t.string :usage

      t.timestamps
    end
  end
end
