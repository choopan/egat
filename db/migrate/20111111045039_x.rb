class X < ActiveRecord::Migration
  def change
	rename_column :failure_databases, :downdate, :downdatetime
	rename_column :failure_databases, :update, :updatetime
  end
end
