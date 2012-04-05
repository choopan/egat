class CreateYAxes < ActiveRecord::Migration
  def change
    create_table :y_axes do |t|
      t.integer :start
      t.integer :end
      t.string :importance
      t.string :action
      t.string :color

      t.timestamps
    end
  end
end
