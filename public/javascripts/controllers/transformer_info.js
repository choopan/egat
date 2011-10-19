var Cbox = { };
Cbox.setupComboxBox = function(id) {
  if ($('#' + id).length > 0) {
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
  }
};

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


var TxName = { };
TxName.setupTransformerNameComboxBox = function(id) {
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
      TxName.onTransformerNameChange(converted.getValue());
    });
  }
};

TxName.onTransformerNameChange = function(transformerId) {
    window.location.href = "/transformer_info/txaddmove?transformer_name=" + transformerId;
};


function setCalendar(){
                $("#txmove_date").datepicker({
                     dateFormat: 'dd/mm/yy',
                     showOn : "button",
                     buttonImage: "/images/icon_calendar.gif",
                     buttonImageOnly : true
                });
}



$(function() {
  PriceLoss.setupTransformerNameComboxBox('station_station');
  Cbox.setupComboxBox('station');
  Cbox.setupComboxBox('brand_id');
  Cbox.setupComboxBox('phase');
  Cbox.setupComboxBox('phase_position');
  Cbox.setupComboxBox('winding_type');
  Cbox.setupComboxBox('status');
  Cbox.setupComboxBox('bushing_hv');
  Cbox.setupComboxBox('bushing_lv');
  Cbox.setupComboxBox('bushing_tv');
  Cbox.setupComboxBox('arrester_hv');
  Cbox.setupComboxBox('arrester_lv');
  Cbox.setupComboxBox('arrester_tv');
  Cbox.setupComboxBox('oltc');
  Cbox.setupComboxBox('txmove_new_station');
  TxName.setupTransformerNameComboxBox('txmove_txname');
  setCalendar();

});

