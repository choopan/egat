class CreateXxes < ActiveRecord::Migration
  def change
    create_table :xxes do |t|
      t.string :a

      t.timestamps
    end
  end
end
