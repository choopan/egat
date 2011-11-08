class CreateFdModes < ActiveRecord::Migration
  def change
    create_table :fd_modes do |t|
      t.string :mode

      t.timestamps
    end
  end
end
