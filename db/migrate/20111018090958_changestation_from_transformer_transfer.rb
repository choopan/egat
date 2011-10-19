class ChangestationFromTransformerTransfer < ActiveRecord::Migration
  def up
	remove_column :transformer_transfers, :station_id
	remove_column :transformer_transfers, :new_station_id
	add_column :transformer_transfers, :station, :string
	add_column :transformer_transfers, :new_station, :string
  end

  def down
	add_column :transformer_transfers, :station_id, :integer
	add_column :transformer_transfers, :new_station_id, :integer
	remove_column :transformer_transfers, :station
	remove_column :transformer_transfers, :new_station
  end
end
