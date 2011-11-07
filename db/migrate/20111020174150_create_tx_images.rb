class CreateTxImages < ActiveRecord::Migration
  def change
    create_table :tx_images do |t|

      t.timestamps
    end
  end
end
