class TransformerAccessory < ActiveRecord::Base
  def self.transformer_getid_instantaneous()
	order("id DESC").first
    	     rescue Exception
      	return nil
  end

   def self.get_transformer_accessories_id(id)
	where("id = '#{id}'").first
    	rescue Exception
      	return nil
  end
end
