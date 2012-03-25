class BushingTestsController < ApplicationController
  
  def index
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @transformer = Transformer.find(params[:transformer_id])
    @bushing_tests = BushingTest.where(:transformer_id => params[:transformer_id]).order("test_date DESC") 
    @bushing_test = @bushing_tests.first
    respond_to do |format|
      format.html
      ActiveRecord::Base.include_root_in_json = false
      methods = [:test_date_for_floth, 
                 :h1_c1_percent_power_factor_cor, :h2_c1_percent_power_factor_cor, :h3_c1_percent_power_factor_cor,
                 :h0_c1_percent_power_factor_cor, :h1_c2_percent_power_factor_avg, :h2_c2_percent_power_factor_avg,
                 :h3_c2_percent_power_factor_avg, :h0_c2_percent_power_factor_avg,
                 :x1_c1_percent_power_factor_cor, :x2_c1_percent_power_factor_cor, :x3_c1_percent_power_factor_cor,
                 :x0_c1_percent_power_factor_cor, :x1_c2_percent_power_factor_avg, :x2_c2_percent_power_factor_avg,
                 :x3_c2_percent_power_factor_avg, :x0_c2_percent_power_factor_avg
      ]
      format.js { render :json => @bushing_tests.to_json(:methods => methods) }
    end
  end

  def new
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @transformer = Transformer.find(params[:transformer_id])
    @bushing_test = BushingTest.new 
  end

  def create
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @bushing_test = BushingTest.new(params[:bushing_test])
    respond_to do |format|
      if @bushing_test.save
        format.html {
          redirect_to(search_visual_inspections_path, :notice => "Data for Visual Inspection has been added")
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
    @transformer = Transformer.find(params[:transformer_id])
    @bushing_test = BushingTest.find(params[:id])
  end
  
  def update
   if session[:user].nil?
			redirect_to('/login/login')
		end
    @transformer = Transformer.find(params[:transformer_id])
    @bushing_test = BushingTest.find(params[:id])
    respond_to do |format|
      if @bushing_test.update_attributes(params[:bushing_test])
        format.html {
          redirect_to(transformer_electrical_tests_path(@transformer), 
                      :notice => 'Bushing Test was successfully updated.')
        }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  
end
