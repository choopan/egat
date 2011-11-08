class CreateFdDetails < ActiveRecord::Migration
  def change
    create_table :fd_details do |t|
      t.string :detail

      t.timestamps
    end
  end
end
