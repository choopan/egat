class AddtxdetailsToTransformer < ActiveRecord::Migration
  def change
	add_column :transformer, :station, :string
	add_column :transformer, :txname, :string
  end

end
