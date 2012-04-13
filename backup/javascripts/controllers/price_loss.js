var PriceLoss = { };

PriceLoss.setupTransformerNameComboxBox = function(id) {
  if ($('#' + id).length > 0) {
    var transformerId;
    var selected;
    if (jQuery.url.attr("path").split("/")[1] == "transformers" && 
    Number(jQuery.url.attr("path").split("/")[2]) > 0) {
      transformerId = Number(jQuery.url.attr("path").split("/")[2]);
    }
    selected = $("#" + id + " " + "option:selected");
    if (selected.val().length > 0) {
      transformerId = selected.val();
    }
    var converted = new Ext.form.ComboBox({
      typeAhead: true,
      triggerAction: 'all',
      transform: id, 
      width: '200',
      forceSelection:true,
      value: transformerId
    });

    converted.on('select', function() {
      PriceLoss.onTransformerNamChange(converted.getValue());    
    });
  }
};

PriceLoss.onTransformerNamChange = function(transformerId) {
  if ($('body').attr('name') == "new") {
    window.location.href = "/transformers/" + transformerId + "/price_loss/new";
  } else {
    window.location.href = "/transformers/" + transformerId + "/price_loss";
  }
};

$(function() {
  PriceLoss.setupTransformerNameComboxBox('transformer_id');
  PriceLoss.setupTransformerNameComboxBox('price_loss_transformer_id');
});
