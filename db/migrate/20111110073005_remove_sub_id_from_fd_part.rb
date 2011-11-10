class RemoveSubIdFromFdPart < ActiveRecord::Migration
  def change
	remove_column :fd_parts, :subid
  end
end
