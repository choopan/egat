class CreateFdFunctions < ActiveRecord::Migration
  def change
    create_table :fd_functions do |t|
      t.string :function

      t.timestamps
    end
  end
end
