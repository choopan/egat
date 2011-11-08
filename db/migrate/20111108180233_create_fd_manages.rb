class CreateFdManages < ActiveRecord::Migration
  def change
    create_table :fd_manages do |t|
      t.string :manage

      t.timestamps
    end
  end
end
