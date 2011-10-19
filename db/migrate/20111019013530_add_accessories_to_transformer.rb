class AddAccessoriesToTransformer < ActiveRecord::Migration
  def change
        add_column :transformer, :transformer_accessories_id, :integer
  end
end
