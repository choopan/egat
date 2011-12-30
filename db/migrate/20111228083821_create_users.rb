class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :firstname
      t.string :lastname
      t.integer :priv1
      t.integer :priv2
      t.integer :priv3
      t.integer :priv4
      t.integer :priv5
      t.integer :priv6
      t.integer :priv7
      t.integer :priv8
      t.integer :priv9

      t.timestamps
    end
  end
end
