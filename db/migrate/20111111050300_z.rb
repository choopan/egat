class Z < ActiveRecord::Migration
  def change
	add_column :failure_databases, :downdatetime, :datetime
	add_column :failure_databases, :updatetime, :datetime
  end
end
