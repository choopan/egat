class CreateFdEnvironmnts < ActiveRecord::Migration
  def change
    create_table :fd_environmnts do |t|
      t.string :environmnt

      t.timestamps
    end
  end
end
