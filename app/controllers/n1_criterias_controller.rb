class N1CriteriasController < ApplicationController
  def index
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @n1_criterias = N1Criteria.all
    respond_to do |format|
      format.html 
      format.xml { render :partial => "index.xml.builder", :layout => false }
    end
  end
  
  def update
	if session[:user].nil?
		redirect_to('/login/login')
	end
    @n1_criteria = N1Criteria.find(params[:id])
    params[:n1_criteria] = { 
      :value => params[:value], 
      :score => params[:score], 
      :score_message => params[:score_message] 
    }
    @n1_criteria.update_attributes(params[:n1_criteria])
  end

end
