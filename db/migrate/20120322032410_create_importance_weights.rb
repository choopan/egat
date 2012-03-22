class CreateImportanceWeights < ActiveRecord::Migration
  def change
    create_table :importance_weights do |t|
      t.integer :no
      t.integer :weight

      t.timestamps
    end
  end
end
