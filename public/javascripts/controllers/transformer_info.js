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
      id: id,
      hiddenname: id,
      typeAhead: true,
      triggerAction: 'all',
      transform: id,
      width: '200',
      forceSelection:true,
      value: transformerId
    });
  }
};


var Phase = { };
Phase.setupTransformerNameComboxBox = function(id) {
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
      Phase.onTransformerNamChange(converted.getValue());
    });
  }
};

Phase.onTransformerNamChange = function(transformerId) {
   var phase_position = Ext.getCmp('phase_position');
	if(transformerId=='1'){
		phase_position.enable();
	}else{
		phase_position.disable();
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
  Cbox.setupComboxBox('phase_position');
  Cbox.setupComboxBox('winding_type');
  Cbox.setupComboxBox('status');
  Cbox.setupComboxBox('bushing_hv_manu');
  Cbox.setupComboxBox('bushing_lv_manu');
  Cbox.setupComboxBox('bushing_tv_manu');
  Cbox.setupComboxBox('arrester_hv_manu');
  Cbox.setupComboxBox('arrester_lv_manu');
  Cbox.setupComboxBox('arrester_tv_manu');
  Cbox.setupComboxBox('oltc_manu');
  Cbox.setupComboxBox('txmove_new_station');
  TxName.setupTransformerNameComboxBox('txmove_txname');
  setCalendar();
  Phase.setupTransformerNameComboxBox('phase');

});

