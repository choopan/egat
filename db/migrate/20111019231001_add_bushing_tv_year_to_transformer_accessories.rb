class AddBushingTvYearToTransformerAccessories < ActiveRecord::Migration
  def change
		add_column :transformer_accessories,:bushing_tv_year,:integer
  end
end
