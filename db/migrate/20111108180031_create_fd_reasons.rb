class CreateFdReasons < ActiveRecord::Migration
  def change
    create_table :fd_reasons do |t|
      t.string :reason

      t.timestamps
    end
  end
end
