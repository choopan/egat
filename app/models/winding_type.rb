# == Schema Information
# Schema version: 20110203165120
#
# Table name: winding_types
#
#  id          :integer(4)      not null, primary key
#  description :string(255)
#

class WindingType < ActiveRecord::Base
  set_table_name "winding_type"
  set_primary_key "id"
  belongs_to :transformer
end
