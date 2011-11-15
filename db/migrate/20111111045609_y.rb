class Y < ActiveRecord::Migration
  def change
	remove_column :failure_databases, :downdatetime
	remove_column :failure_databases, :updatetime
  end
end
