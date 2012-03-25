class ElectricalTestsController < ApplicationController
  def index
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @transformer = Transformer.find_by_id(params[:transformer_id])
    @insulating_oils = InsulatingOil.where(:transformer_id => params[:transformer_id]).order("test_date DESC")
    @bushing_tests = BushingTest.where(:transformer_id => params[:transformer_id]).order("test_date DESC")
    @arresters = Arrester.where(:transformer_id => params[:transformer_id]).order("test_date DESC")
  end

  def search
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @transformers = Transformer.all
  end
end
