class TransformerInfoController < ApplicationController
  def txlist
    if request.xhr?
      if params[:region]
        @stations = Station.find_all_by_region(params[:region])
        names = @stations.collect { |s| s.name }
        transformers = Transformer.find_all_by_transformer_name_initials(names)
        @data_points = TransformerInformation.get_data_points_by_transformers(transformers)
        @data_points = @data_points.to_json
      elsif params[:transformer_id]
        transformer_id = params[:transformer_id]
        @data_points = TransformerInformation.get_data_points_by_transformer_id(transformer_id)
        @data_points = @data_points.to_json
      else
        @data_points = TransformerInformation.get_data_points
      end
    else
      if params[:transformer_ids]
        transformer_ids = params[:transformer_ids].split(',').map { |x| x.to_i }
        @data_points = TransformerInformation.get_data_points_by_transformer_ids(transformer_ids)
        @data_points = @data_points.to_json
      elsif params[:region]
        @stations = Station.find_all_by_region(params[:region])
        names = @stations.collect { |s| s.name }
        transformers = Transformer.find_all_by_transformer_name_initials(names)
        @transformer_informations = TransformerInformation.find_all_by_transformers(transformers)
      else
        @transformer_informations = TransformerInformation.all
      end

  end

  def txadd
  end

  def txlistmove
  end

  def txaddmove
  end

  def failurereport
  end

end
