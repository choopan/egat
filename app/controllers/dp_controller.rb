#encoding: utf-8
class DpController < ApplicationController
  def edit
    @dp = Dp.find(1)
    rescue Exception
      @dp = Dp.new
      @dp.save
  end


  def update
        @dp = Dp.find(1)
        @dp.update_attributes(params[:dp])
        redirect_to(edit_dp_index_path, :notice => 'บันทีกค่าเรียบร้อยแล้ว')
  end
end
