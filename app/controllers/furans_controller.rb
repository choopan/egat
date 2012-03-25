class FuransController < ApplicationController

  def index
   if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @furans = Furan.where("transformer_id =?", params[:transformer_id]).order("test_date DESC")
    respond_to do |format|
      format.html
      ActiveRecord::Base.include_root_in_json = false
      format.js {render :json => @furans.to_json(:methods => [:test_date_for_floth])}
    end
  end

  def new
   if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @furan = Furan.new
  end

  def create
   if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @furan = Furan.new(params[:furan])
    respond_to do |format|
      if @furan.save
        format.html {
          redirect_to(transformer_oil_input_index_path(@transformer), :notice => 'Data for Furan has been added.')
        }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def edit
   if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find_by_id(params[:transformer_id])
    @furan = Furan.find(params[:id])
  end

  def update
   if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @furan = Furan.find(params[:id])
    respond_to do |format|
      if @furan.update_attributes(params[:furan])
        format.html {
          redirect_to(transformer_oil_input_index_path(@transformer), :notice => 'Furan was successfully updated.')
        }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
   if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @furan = Furan.find(params[:id])
    @furan.destroy
    respond_to do |format|
      format.html { redirect_to(transformer_oil_input_index_path(@transformer)) }
    end
  end

end
