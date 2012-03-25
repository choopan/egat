class OilDgasController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @oil_dgas = OilDga.where(:transformer_id => params[:transformer_id]).order("test_date DESC")
    respond_to do |format|
      format.html {render :layout => false}# index.html.erb
      # ActiveRecord::Base.include_root_in_json = false
      # format.js { render :json => @oil_dgas.to_json }
    end
  end

  def graph
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @oil_dgas = OilDga.where(:transformer_id => params[:transformer_id]).order("test_date DESC")
    respond_to do |format|
      format.html # index.html.erb
      ActiveRecord::Base.include_root_in_json = false
      format.js { render :json => @oil_dgas.to_json }
    end
  end

  def show
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @oil_dga = OilDga.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      ActiveRecord::Base.include_root_in_json = false
      format.js { render :json => @oil_dga.to_json }

    end
  end

  def new
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oil_dga = OilDga.new
  end

  def edit
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find_by_id(params[:transformer_id])
    @oil_dga = OilDga.find(params[:id])
  end

  def create
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oil_dga = OilDga.new(params[:oil_dga])
    respond_to do |format|
      if @oil_dga.save
        format.html {
          redirect_to(search_oil_input_index_path,
                      :notice => 'Data for Main Tank Dga has been added.')
        }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oil_dga = OilDga.find(params[:id])
    respond_to do |format|
      if @oil_dga.update_attributes(params[:oil_dga])
        format.html {
          redirect_to(transformer_oil_input_index_path(@transformer),
                      :notice => 'OilDga was successfully updated.') }
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
    @oil_dga = OilDga.find(params[:id])
    @oil_dga.destroy
    respond_to do |format|
      format.html {
        redirect_to(transformer_oil_input_index_path(@transformer))
      }
      format.html { redirect_to(oil_dgas_url) }
      format.xml  { head :ok }
      ActiveRecord::Base.include_root_in_json = false
      format.js { render :json => OilDga.all.to_json }
    end
  end
end
