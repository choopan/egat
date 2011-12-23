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
	elsif params[:charts]=='2'
		@titles="จำนวนหม้อแปลงกับบริษัทผู้ผลิต"
	elsif params[:charts]=='3'
		@titles="จำนวนหม้อแปลงในแต่ละเขตสถานีไฟฟ้า"
	elsif params[:charts]=='4'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามกลุ่มอุปกรณ์"
	elsif params[:charts]=='5'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามชิ้นส่วนอุปกรณ์"
	elsif params[:charts]=='6'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามรายละเอียดของความผิดปกติ"
	elsif params[:charts]=='7'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามสาเหตุที่แท้จริง"
	elsif params[:charts]=='8'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามระดับความรุนแรง"
	elsif params[:charts]=='9'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามบริษัทผู้ผลิต"
	elsif params[:charts]=='10'
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามเขต"
	else
		@titles="จำนวนครั้งที่เกิดความเสียหายแบ่งตามอายุการใช้งาน"
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
