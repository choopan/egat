class OltcDgasController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oltc_dgas = OltcDga.where("transformer_id = ?",
                              params[:transformer_id]).order("test_date DESC")
    respond_to do |format|
      format.html # index.html.erb
      ActiveRecord::Base.include_root_in_json = false
      format.js { render :json => @oltc_dgas.to_json }
    end
  end


  def new
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oltc_dga = OltcDga.new
  end

  def create
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oltc_dga = OltcDga.new(params[:oltc_dga])
    respond_to do |format|
      if @oltc_dga.save
        format.html {
          redirect_to(transformer_oil_input_index_path(@transformer),
                      :notice => 'Data for OLTC Dga has been added.')
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
    @oltc_dga = OltcDga.find(params[:id])
  end

  def update
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find(params[:transformer_id])
    @oltc_dga = OltcDga.find(params[:id])
    respond_to do |format|
      if @oltc_dga.update_attributes(params[:oltc_dga])
        format.html {
          redirect_to(transformer_oil_input_index_path(@transformer),
                      :notice => 'OLTC DGA was successfully updated.') }
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
    @oltc_dga = OltcDga.find(params[:id])
    @oltc_dga.destroy
    respond_to do |format|
      format.html {
        redirect_to(transformer_oil_input_index_path(@transformer))
      }
    end
  end

end
