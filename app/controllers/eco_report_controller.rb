#encoding : utf-8
class EcoReportController < ApplicationController
  def report
    @transformer = Transformer.find(params[:transformer_id])
#choopan
    #o = OverallCondition.new(params[:transformer_id])
    #@overallcondition = o.percent_overall_health_index
    #if @overallcondition.nil?
      @overallcondition = "-"
    #end

    manu = Manufacturer.find(@transformer[:manufacturing])
    @manufacturer = manu[:name] 
    w_type = WindingType.find(@transformer[:winding_type_id])
    @winding_type = w_type[:description]

    dp = Dp.find(1)
    @endlife = 52.076425 - ( 36.842943 * Math.exp(-2609690.4 * (dp.dp ** (-2.493992))))
    fal = Furan.get_fal(params[:transformer_id])
    if fal.nil?
      @explife = "-"
      @remainlife = "-"
    else
      @explife = 53.157042 - ( 33.801277 * Math.exp(-0.003834756 * (fal ** (1.0305127))))
      @remainlife = @endlife - @explife
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
    
    @option2_information = EcoOption2.get_option2_information(1, params[:transformer_id])
    if @option2_information.nil?
      @option2_information = EcoOption2.new
    end

    #fix user_id = 1
    @option3_information = EcoOption3.get_option3_information(1, params[:transformer_id])
    if @option3_information.nil?
      @option3_information = EcoOption3.new
    end

    @num = 0
    @factorsetting = FactorSetting.find_by_user_id(1)
    if @factorsetting.nil?
      @factorsetting = FactorSetting.newrecord_user_id(1)
    end
    @projectlife = @factorsetting.projectlife


    @transformer_id = params[:transformer_id];
    @user_id = 1

    #fix user_id = 1
    eco_con = EcoConclusion.new
    #@eco_conclusion = eco_con.computeNPV1(1, params[:transformer_id])
    #@eco_conclusionNPV2 = eco_con.computeNPV2(1, params[:transformer_id])
    #@eco_conclusionNPV3 = eco_con.computeNPV3(1, params[:transformer_id])
    @eco_conclusion = [ eco_con.computeNPV1(1, params[:transformer_id]), eco_con.computeNPV2(1, params[:transformer_id]), eco_con.computeNPV3(1, params[:transformer_id])]
     @transformer = Transformer.find(params[:transformer_id])

    #fix user_id = 1
    @transformer_price_loss = TransformerPriceLoss.get_transformer_price_loss(1, params[:transformer_id])
    if @transformer_price_loss.nil?
      @transformer_price_loss = TransformerPriceLoss.new
      @transformer_price_loss.transformer_price = 0
      @transformer_price_loss.noload_loss = 0
      @transformer_price_loss.loadloss = 0
    end
    minindex = -1
    for i in 0..2 do
      if @eco_conclusion[i] != '-'
        minvalue = @eco_conclusion[i]
        minindex = i
        break
      end
    end

    if minindex != -1
       for i in 0..2 do
          if @eco_conclusion[i] != '-' && @eco_conclusion[i] < minvalue
             minvalue = @eco_conclusion[i]
             minindex = i
          end
       end
       if minindex == 0
         @eco_summary = "ซ่อม ณ ปัจจุบันและซ่อมหม้อแปลงสำรองเพื่อใช้งานต่อ"
       elsif minindex == 1
         @eco_summary = "ซ่อม ณ ปัจจุบันและซื้อหม้อแปลงใหม่เมื่อสิ้นสุดใช้งานหม้อแปลงเดิม"
       else
         @eco_summary = "ซื้อหม้อแปลงใหม่มาใช้งานแทน"
       end
    else
         @eco_summary = "ข้อมูลไม่เพียงพอในการพิจารณา"
    end
  end

end
