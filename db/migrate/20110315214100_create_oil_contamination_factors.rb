class CreateOilContaminationFactors < ActiveRecord::Migration
  def self.up
    create_table :oil_contamination_factors do |t|
      t.integer :hi_factor
      t.string :condition
      t.integer :start
      t.integer :end
      t.string :color_id                  
      t.timestamps
    end
  end

  def self.down
    drop_table :oil_contamination_factors
  end
end
