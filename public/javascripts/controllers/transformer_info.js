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


var Region = { };
Region.setupTransformerNameComboxBox = function(id) {
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
      Region.onTransformerNamChange(converted.getValue());
    });
  }
};



Region.onTransformerNamChange = function(transformerId) {
  if ($('body').attr('name') == "new") {
    window.location.href = "/transformer_info/failurereport?region=" + transformerId + "&";
  } else {
    window.location.href = "/transformer_info/failurereport?region=" + transformerId + "&";
  }
};


var TxFailure = { };
TxFailure.setupTransformerNameComboxBox = function(id) {
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
      TxFailure.onTransformerNamChange(converted.getValue());
    });
  }
};

TxFailure.onTransformerNamChange = function(transformerId) {
    var region = jQuery.url.param("region");
    if(region == ""_
    window.location.href = "/transformer_info/failurereport?region=" + jQuery.url.param("region") + "&tid=" + transformerId;
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
                $("#transformer_transfer_action_date").datepicker({
                     dateFormat: 'dd/mm/yy',
                     showOn : "button",
                     buttonImage: "/images/icon_calendar.gif",
                     buttonImageOnly : true
                });
}

$(function() {
  Cbox.setupComboxBox('station');
  Cbox.setupComboxBox('brand_id');
  Cbox.setupComboxBox('phase');
  Cbox.setupComboxBox('phase_position');
  Cbox.setupComboxBox('winding_type');
  Cbox.setupComboxBox('status');
  Cbox.setupComboxBox('transformer_transfer_new_station');
  setCalendar();

  PriceLoss.setupTransformerNameComboxBox('station_station');
  Region.setupTransformerNameComboxBox('failure_station');
  TxName.setupTransformerNameComboxBox('transformer_transfer_old_txname');
  TxFailure.setupTransformerNameComboxBox('failure_transformer');
});

