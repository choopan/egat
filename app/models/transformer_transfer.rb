class TransformerTransfer < ActiveRecord::Base
 belongs_to :stations, :class_name => "Station",  :foreign_key => "name"


end
