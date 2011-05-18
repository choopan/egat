class ChangeDataTypeForEcoOption3ToInteger < ActiveRecord::Migration
  def self.up
    change_table :eco_option3s do |t|
      t.change :new_transformer_price, :integer
      t.change :rated_power, :integer
      t.change :noload_loss, :integer
      t.change :loadloss, :integer
      t.change :pm, :integer
      t.change :mc_avg, :integer
      t.change :det_cost, :integer
    end
  end

  def self.down
    change_table :eco_option3s do |t|
      t.change :new_transformer_price, :float
      t.change :rated_power, :float
      t.change :noload_loss, :float
      t.change :loadloss, :float
      t.change :pm, :float
      t.change :mc_avg, :float
      t.change :det_cost, :float
    end
  end
end
