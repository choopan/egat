class AgingProductsController < ApplicationController
  def index
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @transformer = Transformer.find(params[:transformer_id])
    unless params[:name].nil?
      @aging_products = AgingProduct.find_all_by_name_and_transformer(params[:name], @transformer)
    else
      @aging_products = AgingProduct.all
    end
    @oil_contamination = OilContamination.most_recent(params[:transformer_id]).first
    respond_to do |format|
      format.html
      ActiveRecord::Base.include_root_in_json = false
      format.js { render :json => @aging_products.to_json(:include => [:color]) }
    end
  end

end
