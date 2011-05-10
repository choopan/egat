class InformationDecisionController < ApplicationController

  def index
    @transformer = Transformer.find(params[:transformer_id])
    o = OverallCondition.new(params[:transformer_id])
    @overallcondition = o.percent_overall_health_index
    if @overallcondition.nil?
      @overallcondition = "-"
    end
  
    #fix user_id = 1
    @repair_information = RepairInformation.get_repair_information(1, params[:transformer_id])
    if @repair_information.nil?
      @repair_information = RepairInformation.new
    end

    #fix user_id = 1
    @option1_information = EcoOption1.get_option1_information(1, params[:transformer_id])
    if @option1_information.nil?
      @option1_information = EcoOption1.new
    end

    #fix user_id = 1
    @option3_information = EcoOption3.get_option3_information(1, params[:transformer_id])
    if @option3_information.nil?
      @option3_information = EcoOption3.new
    end
    
    factorsetting = FactorSetting.find_by_user_id(1)
    if factorsetting.nil?
      @projectlife = "-"
    else
      @projectlife = factorsetting.projectlife
    end
    #fix user_id = 1
    eco_con = EcoConclusion.new 
    @eco_conclusion = eco_con.computeNPV1(1, params[:transformer_id])

  end

  def update_repair_information
    #fix user_id = 1
    @repair_information = RepairInformation.get_repair_information(1, params[:transformer_id])
    if @repair_information.nil?
      params[:repair_information][:user_id] = 1
      params[:repair_information][:transformer_id] = params[:transformer_id]
      @repair_information = RepairInformation.create(params[:repair_information])
    else
      @repair_information.update_attributes(params[:repair_information])
    end
    redirect_to("/transformers/" + params[:transformer_id] + "/information_decision#repair_information")
  end

  def update_option1_information
    #fix user_id = 1
    @option1_information = EcoOption1.get_option1_information(1, params[:transformer_id])
    params[:eco_option1][:user_id] = 1
    params[:eco_option1][:transformer_id] = params[:transformer_id]
    if @option1_information.nil?
      @option1_information = EcoOption1.create(params[:eco_option1])
    else
      @option1_information.update_attributes(params[:eco_option1])
    end
    redirect_to("/transformers/" + params[:transformer_id] + "/information_decision#option1")
  end

  def update_option3_information
    #fix user_id = 1
    @option3_information = EcoOption3.get_option3_information(1, params[:transformer_id])
    if @option3_information.nil?
      params[:eco_option3][:user_id] = 1
      params[:eco_option3][:transformer_id] = params[:transformer_id]
      @option3_information = EcoOption3.create(params[:eco_option3])
    else
      @option3_information.update_attributes(params[:eco_option3])
    end
    redirect_to("/transformers/" + params[:transformer_id] + "/information_decision#option3")
  end

  def search
    @transformers = Transformer.all
  end

end
