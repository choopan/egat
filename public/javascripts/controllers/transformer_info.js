var PriceLoss = { };
PriceLoss.setupTransformerNameComboxBox = function(id) {
  if ($('#' + id).length > 0) {
    var region = $('#'+id+' : selected').text();
    var transformerId;
    var selected;



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
    window.location.href = "/transformer_info/txlist?region=" + transformerId;
  } else {
    window.location.href = "/transformer_info/txlist?region=" + transformerId;
  }
};

$(function() {
  PriceLoss.setupTransformerNameComboxBox('station_station');
});

