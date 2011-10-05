module ManufacturingHelper
def javascript_includes
    javascript_include_tag('jquery-ui-1.8.4.custom.min','ext-jquery-adapter',
                           'ext-all', 'jquery.url', 'controllers/manufacturing')
  end

  def transformer_names_drop_down_list(form, id)
    @transformers = Transformer.order("transformer_name").all
    form.collection_select(id,  @transformers, :id, :transformer_name,
                           {:include_blank => true})
  end
end
