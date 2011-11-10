class RemoveSomeInfoFromTransformer < ActiveRecord::Migration
  def change
       remove_column :transformer, :transformer_accessories_id
       remove_column :transformer, :oltc_manufacturer
       add_column :transformer, :oltc_manufacturer, :integer
  end

end
