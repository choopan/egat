


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

var RegionName = { };
RegionName.setupRegionNameComboBox = function(id) {
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
      typeAhead: true,
      triggerAction: 'all',
      transform: id,
      width: '200',
      forceSelection:true,
      value: transformerId
    });


    converted.on('select', function() {
      RegionName.onRegionNameChange(converted.getValue());
    });
  }
};
RegionName.onRegionNameChange = function(transformerId) {
    window.location.href = "/transformer_chart/report_transformer?report2_area=" + transformerId;
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


var Station = { };
Station.setupComboxBox = function(id) {
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
      typeAhead: true,
      triggerAction: 'all',
      transform: id,
      width: '200',
      forceSelection:true,
      value: transformerId
    });


    converted.on('select', function() {
      Station.onStationChange(converted.getValue());
    });
  }
};
Station.onStationChange = function(transformerId) {
	var area = Ext.getCmp('report2_area');
    window.location.href = "/transformer_chart/report_transformer?report2_area=" + area.getValue() + "&report2_station="+transformerId;

};

var Manu = { };
Manu.setupComboxBox = function(id) {
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
      typeAhead: true,
      triggerAction: 'all',
      transform: id,
      width: '200',
      forceSelection:true,
      value: transformerId
    });


    converted.on('select', function() {
      Manu.onManuChange(converted.getValue());
    });
  }
};
Manu.onManuChange = function(transformerId) {
	var area = Ext.getCmp('report2_area');
	var station = Ext.getCmp('report2_station');
	//var manufacturer = Ext.getCmp('report_manufacturer');

    window.location.href = "/transformer_chart/report_transformer?report2_area=" + area.getValue() + "&report2_station="+ station.getValue() + "&report2_manufacturer="+ transformerId;

};

$(function() {
  //Cbox.setupComboxBox('report_station');
  Cbox.setupComboxBox('report2_transformer');
  Cbox.setupComboxBox('group');
  Cbox.setupComboxBox('environment');
  Cbox.setupComboxBox('anomaly');
  Cbox.setupComboxBox('detail_damage');
  Cbox.setupComboxBox('device_group');
  Cbox.setupComboxBox('device_damage');
  Cbox.setupComboxBox('level_damage');
  Cbox.setupComboxBox('cause');
  Cbox.setupComboxBox('management');
  RegionName.setupRegionNameComboBox('report2_area');
  Station.setupComboxBox('report2_station');
  Manu.setupComboxBox('report2_manufacturer');

  Cbox.setupComboxBox('report3_area');
	Cbox.setupComboxBox('report3_station');
	Cbox.setupComboxBox('report3_manufacturer');
	Cbox.setupComboxBox('report3_transformer');
	Cbox.setupComboxBox('report3_environment');
	Cbox.setupComboxBox('report3_function');
	Cbox.setupComboxBox('report3_detail');
	Cbox.setupComboxBox('report3_group');
	Cbox.setupComboxBox('report3_part');
	Cbox.setupComboxBox('report3_mode');
	Cbox.setupComboxBox('report3_reason');
	Cbox.setupComboxBox('report3_manage');
});

