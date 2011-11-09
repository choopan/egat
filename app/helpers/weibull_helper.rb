module WeibullHelper
def javascript_includes
    javascript_include_tag('controllers/weibull')
  end

  def transformer_names_drop_down_list(form, id)
    @transformers = Transformer.order("transformer_name").all
    form.collection_select(id,  @transformers, :id, :transformer_name,
                           {:include_blank => true})
  end
end
