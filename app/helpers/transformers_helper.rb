module TransformersHelper
  def transformer_winding_type(transformer)
    WindingType.find(transformer.winding_type_id).description
  end

  def transformer_oltc_manufacturer(manufacturer_id)
	oltc = ManufacturerOltc.get_oltc_id(manufacturer_id)
	if oltc.nil? or oltc.blank?
		return "-"
	end
	oltc_manu_name = ManufacturerOltc.get_oltc_id(manufacturer_id).manufacturer
	if oltc_manu_name.nil? or oltc_manu_name.blank? or oltc_manu_name.size == 0
		oltc_manu_name = "-"
	end
	return oltc_manu_name
  end

end
