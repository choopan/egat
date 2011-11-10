class Addegatsntotxaccessories < ActiveRecord::Migration
  def change
        add_column :transformer_accessories, :egatsn, :string
  end
end
