#encoding : utf-8
class OilInputController < ApplicationController
@@bc_ic = "ข้อมูลบำรุงรักษาหม้อแปลง"
@@bc_ic_link = "#"
  def index
  @breadcrumb_title = Array.new()
  @breadcrumb_link  = Array.new()
  @breadcrumb_title[0] = @@bc_ic
  @breadcrumb_link[0]  = @@bc_ic_link
  @breadcrumb_title[1] = 'ผลทดสอบทางน้ำมัน'
  @breadcrumb_link[1]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find_by_id(params[:transformer_id])
    @oil_dgas = OilDga.where(:transformer_id => params[:transformer_id]).order("test_date DESC")
    @oltc_dgas = OltcDga.where('transformer_id = ?', params[:transformer_id]).order("test_date DESC")
    debugger
    @furans = Furan.where('transformer_id = ?', params[:transformer_id]).order('test_date DESC')
    @oil_contaminations = OilContamination.where('transformer_id = ?',params[:transformer_id]).order('test_date DESC')
    @oltc_oil_contaminations = OltcOilContamination.where('transformer_id = ?', params[:transformer_id]).order('test_date DESC')
  end

  def show
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @transformer = Transformer.find_by_transformer_name(params[:id])
  end

  def search
  @breadcrumb_title = Array.new()
  @breadcrumb_link  = Array.new()
  @breadcrumb_title[0] = @@bc_ic
  @breadcrumb_link[0]  = @@bc_ic_link
  @breadcrumb_title[1] = 'ผลทดสอบทางน้ำมัน'
  @breadcrumb_link[1]  = ""
	if session[:user].nil?
		redirect_to('/login/login')
	end
	session[:username] = "korn"
    @transformers = Transformer.all
  end

end
