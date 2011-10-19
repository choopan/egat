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
    @power_usages = PowerUsage.order("id").all
    @manufacturer_bushing = ManufacturerBushing.get_bushing()
    @num_bushing = @manufacturer_bushing.count
    if @num_bushing==0
	@manufacturer_bushing = ManufacturerBushing.new
    end
    @manufacturer_arrester = ManufacturerArrester.get_arrester()
    @num_arrester = @manufacturer_arrester.count
    if @num_arrester==0
	@manufacturer_arrester = ManufacturerArrester.new
    end
    @manufacturer_oltc = ManufacturerOltc.get_oltc()
    @num_oltc = @manufacturer_oltc.count
    if @num_oltc==0
	@manufacturer_oltc = ManufacturerOltc.new
    end
	
  end

  def txlistmove
	@txtransfers = TransformerTransfer.order("id").paginate(:page => params[:page], :per_page => 25)
  end

  def txaddmove
	@txnames = Transformer.order("transformer_name")
	selectedTx = params[:transformer_name]
	if(!selectedTx.nil?) 
		txinfo = Transformer.where("transformer_name = '#{selectedTx}'").first
		@egatsn   = txinfo.egatsn
		station_name  = txinfo.station
	else
		@egatsn   = @txnames.first.egatsn
		station_name  = @txnames.first.station
	end
	@station = Station.where("name = '#{station_name}'").first.full_name
	@stations = Station.order("name")

  end

  def failurereport
  end

end
