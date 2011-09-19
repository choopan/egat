class TransformerInfoController < ApplicationController
  def txlist

	if params[:region] == "" or params[:region].nil?
		@txinfos = Transformer.order("id").paginate(:page => params[:page], :per_page => 5)
	else
		@stations = Station.where("region = '#{params[:region]}'")
		whereclause = ""
		for station in @stations
			whereclause += "transformer_name like '#{station.name}%' or "
		end
		whereclause += "0"
		@txinfos = Transformer.where(whereclause).order("id").paginate(:page => params[:page], :per_page => 5)
	end

  end

  def txedit
  end

  def txadd
    @txinfo = Transformer.new
    @stations = Station.order("name").all
    @brand_ids = Brand.order("name").all
    @winding_types = WindingType.order("id").all
  end

  def txlistmove
  end

  def txaddmove
  end

  def failurereport
  end

end
