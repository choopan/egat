class CreateTestXes < ActiveRecord::Migration
  def change
    create_table :test_xes do |t|
      t.string :name

      t.timestamps
    end
  end
end
