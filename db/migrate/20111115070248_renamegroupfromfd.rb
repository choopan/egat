class Renamegroupfromfd < ActiveRecord::Migration
  def change
	rename_column :fd_group_parts, :group, :groupname
  end
end
