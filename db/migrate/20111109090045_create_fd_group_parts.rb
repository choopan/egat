class CreateFdGroupParts < ActiveRecord::Migration
  def change
    create_table :fd_group_parts do |t|
      t.string :group

      t.timestamps
    end
  end
end
