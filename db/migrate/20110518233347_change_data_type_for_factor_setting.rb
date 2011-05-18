class ChangeDataTypeForFactorSetting < ActiveRecord::Migration
  def self.up
    change_table :factor_settings do |t|
      t.change :projectlife, :integer
      t.change :zerolife, :integer
    end
  end

  def self.down
    change_table :factor_settings do |t|
      t.change :projectlife, :float
      t.change :zerolife, :float
    end
  end
end
