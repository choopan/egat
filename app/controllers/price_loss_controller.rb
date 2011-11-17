#encoding : utf-8

class PriceLossController < ApplicationController
  def index
    @transformer = Transformer.find(params[:transformer_id])
    #convert oltc manufacturer from id to name
    #fix user_id = 1
    @transformer_price_loss = TransformerPriceLoss.get_transformer_price_loss(1, params[:transformer_id])
    if @transformer_price_loss.nil?
      @transformer_price_loss = TransformerPriceLoss.new
      @transformer_price_loss.transformer_price = 0
      @transformer_price_loss.noload_loss = 0
      @transformer_price_loss.loadloss = 0
    end
  end

  def update
    #fix user_id = 1
    @transformer_price_loss = TransformerPriceLoss.get_transformer_price_loss(1, params[:transformer_id])
        if @transformer_price_loss.nil?
            #fix user_id = 1
            params[:transformer_price_loss][:user_id] = 1
            params[:transformer_price_loss][:transformer_id] = params[:transformer_id]
            @transformer_price_loss = TransformerPriceLoss.create(params[:transformer_price_loss])
        else
            @transformer_price_loss.update_attributes(params[:transformer_price_loss])
        end
        redirect_to("/transformers/" + params[:transformer_id] + "/price_loss", :notice => 'บันทีกค่าเรียบร้อยแล้ว')
  end

  def search
    @transformers = Transformer.all
  end

end
