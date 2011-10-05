class CreateTransformerTransfers < ActiveRecord::Migration
  def change
    create_table :transformer_transfers do |t|
      t.string :txname
      t.string :egatsn
      t.integer :station_id
      t.integer :new_station_id
      t.datetime :action_date
      t.string :user_op

      t.timestamps
    end
  end
end
