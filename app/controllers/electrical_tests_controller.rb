#encoding : utf-8
class ElectricalTestsController < ApplicationController
@@bc_ic = "ข้อมูลบำรุงรักษาหม้อแปลง"
@@bc_ic_link = "#"
  def index
  @breadcrumb_title = Array.new()
  @breadcrumb_link  = Array.new()
  @breadcrumb_title[0] = @@bc_ic
  @breadcrumb_link[0]  = @@bc_ic_link
  @breadcrumb_title[1] = 'ผลทดสอบทางไฟฟ้า'
  @breadcrumb_link[1]  = ""
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @transformer = Transformer.find_by_id(params[:transformer_id])
    @insulating_oils = InsulatingOil.where(:transformer_id => params[:transformer_id]).order("test_date DESC")
    @bushing_tests = BushingTest.where(:transformer_id => params[:transformer_id]).order("test_date DESC")
    @arresters = Arrester.where(:transformer_id => params[:transformer_id]).order("test_date DESC")
  end

  def search
  @breadcrumb_title = Array.new()
  @breadcrumb_link  = Array.new()
  @breadcrumb_title[0] = @@bc_ic
  @breadcrumb_link[0]  = @@bc_ic_link
  @breadcrumb_title[1] = 'ผลทดสอบทางไฟฟ้า'
  @breadcrumb_link[1]  = ""
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @transformers = Transformer.all
  end
end
