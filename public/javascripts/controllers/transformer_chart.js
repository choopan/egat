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
      id: id,
      hiddenname: id,
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
  displaysub(transformerId);
  displaytype(1);
};


var Manu = { };
Manu.setupTransformerNameComboxBox = function(id) {
  if ($('#' + id).length > 0) {
    var region = $('#'+id+' : selected').text();
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


    converted.on('select', function() {
      Manu.onTransformerNamChange(converted.getValue());
    });
  }
};

Manu.onTransformerNamChange = function(transformerId) {
  displaytype(transformerId);
};


$(function() {
  Cbox.setupComboxBox('area');
  Cbox.setupComboxBox('station');
  Cbox.setupComboxBox('transformer');
  Cbox.setupComboxBox('manufacturer');
  Cbox.setupComboxBox('group');
  Cbox.setupComboxBox('environment');
  Cbox.setupComboxBox('anomaly');
  Cbox.setupComboxBox('detail_damage');
  Cbox.setupComboxBox('device_group');
  Cbox.setupComboxBox('device_damage');
  Cbox.setupComboxBox('level_damage');
  Cbox.setupComboxBox('cause');
  Cbox.setupComboxBox('management');
  //Manu.setupTransformerNameComboxBox('area');
  //Manu.setupTransformerNameComboxBox('station');
  //Manu.setupTransformerNameComboxBox('transformer');
  //Manu.setupTransformerNameComboxBox('manufacturer');

});

