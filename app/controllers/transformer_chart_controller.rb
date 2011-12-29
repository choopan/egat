#encoding: utf-8
class TransformerChartController < ApplicationController
  def chart
  end

  def select_chart
	if params[:count]==nil
		@count=1
	else
		@count=params[:count].to_i+1
	end


	if params[:charts]=='1'
		@titles="จำนวนหม้อแปลงเมื่อเทียบกับอายุการใช้งาน"
                @graphdata, @graphpercent = Transformer.graph1(params[:start_old1], params[:end_old1])
	elsif params[:charts]=='2'
		@titles = "จำนวนหม้อแปลงกับบริษัทผู้ผลิต"
                @graphdata, @graphpercent = Transformer.graph2
	elsif params[:charts]=='3'
		@titles="จำนวนหม้อแปลงในแต่ละเขตสถานีไฟฟ้า"
                @graphdata, @graphpercent = Transformer.graph3
	elsif params[:charts]=='4'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามกลุ่มอุปกรณ์"
                @graphdata, @graphpercent = FailureDatabase.graph4
	elsif params[:charts]=='5'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามชิ้นส่วนอุปกรณ์"
                @graphdata, @graphpercent = FailureDatabase.graph5
	elsif params[:charts]=='6'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามรายละเอียดของความผิดปกติ"
                @graphdata, @graphpercent = FailureDatabase.graph6
	elsif params[:charts]=='7'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามสาเหตุที่แท้จริง"
                @graphdata, @graphpercent = FailureDatabase.graph7
	elsif params[:charts]=='8'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามระดับความรุนแรง"
                @graphdata, @graphpercent = FailureDatabase.graph8
	elsif params[:charts]=='9'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามบริษัทผู้ผลิต"
                @graphdata, @graphpercent = FailureDatabase.graph9
	elsif params[:charts]=='10'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามเขต"
                @graphdata, @graphpercent = FailureDatabase.graph10
	else
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามอายุการใช้งาน"
                @graphdata, @graphpercent = FailureDatabase.graph11(params[:start_old2], params[:end_old2])
	end
  end

  def report_transformer

  end

  def report_damaged

  end

  def report_transformer_f

  end

  def report_damaged_f

  end
end
