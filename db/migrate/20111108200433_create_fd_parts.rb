class CreateFdParts < ActiveRecord::Migration
  def change
    create_table :fd_parts do |t|
      t.integer :mainid
      t.integer :subid
      t.string :part

      t.timestamps
    end
  end
end
