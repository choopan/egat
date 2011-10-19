class AddSomeToTransformerTransfer < ActiveRecord::Migration
  def change
	remove_column :transformer_transfers, :txname
	add_column :transformer_transfers, :old_txname, :string
	add_column :transformer_transfers, :new_txname, :string
  end
end
