class TransformerInfoController < ApplicationController
  def txlist

	if params[:region] == ""
		@txinfos = Transformer.order("id");
	else
		@stations = Station.where("region = '#{params[:region]}'")
		whereclause = ""
		for station in @stations
			whereclause += "transformer_name like '#{station.name}%' or "
		end
		whereclause += "0"
		@txinfos = Transformer.where(whereclause).order("id")
	end

  end

  def txadd
  end

  def txlistmove
  end

  def txaddmove
  end

  def failurereport
  end

end
