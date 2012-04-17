function setSystemFaultLevelHvMva() {
  var busVoltageHv = parseFloat(
    $('#transformer_information_bus_voltage_hv_id :selected').text()); 
  var systemFaultLevelHv = parseFloat(
    $('#transformer_information_system_fault_level_hv').val());
  if (!isNaN(busVoltageHv) && !isNaN(systemFaultLevelHv)) {
    var systemFaultLevelHvMva = 1.732 * busVoltageHv * systemFaultLevelHv; 
    $('#transformer_information_system_fault_level_hv_mva')
      .val(systemFaultLevelHvMva); 
  }
}

function setSystemFaultLevelLvMva() {
  var busVoltageLv = parseFloat(
    $('#transformer_information_bus_voltage_lv_id :selected').text()); 
  var systemFaultLevelLv = parseFloat(
    $('#transformer_information_system_fault_level_lv').val());
  if (!isNaN(busVoltageLv) && !isNaN(systemFaultLevelLv)) {
    var systemFaultLevelLvMva = 1.732 * busVoltageLv * systemFaultLevelLv; 
    $('#transformer_information_system_fault_level_lv_mva')
      .val(systemFaultLevelLvMva);     
  }
}

function plotRiskGraph(points, transformer_names, xscale_data, yscale_data, dscale_data) {
  var d2 = [[(Math.sqrt(2)*dscale_data[0]), 0], [0, (Math.sqrt(2)*dscale_data[0])]];
  var d3 = [[(Math.sqrt(2)*dscale_data[1]), 0], [0, (Math.sqrt(2)*dscale_data[1])]];
  //var d4 = [[100, 0], [0,100]];
  var d5 = [[(Math.sqrt(2)*dscale_data[2]), 0], [0, (Math.sqrt(2)*dscale_data[2])]];
  var d6 = [[(Math.sqrt(2)*dscale_data[3]), 0], [0, (Math.sqrt(2)*dscale_data[3])]];
  var d7 = [[200.818325856979, 0], [0, 200.818325856979]];
  
  var options = {
    grid: {hoverable: true,clickable: true},
    
     yaxis: { min: 0, max: 100, ticks: [0, yscale_data[1][0], yscale_data[2][0], 100], 
             axisLabel: 'Probability of Failure',
             axisLabelUseCanvas: false,
             axisLabelFontSizePixels: 12,
             axisLabelFontFamily: 'Arial' },
    xaxis: { min: 0, max: 100, ticks: [0, xscale_data[1][0], xscale_data[2][0], 100], 
             axisLabel: 'Transformer Importance',
             axisLabelUseCanvas: true,
             axisLabelFontSizePixels: 12,
             axisLabelFontFamily: 'Arial' }
    
  }; 
  $.plot($("#placeholder"), [
    {data: d7, lines: {show: true, fill: true, fillColor: 'rgb(255, 0, 0)', 
                       lineWidth: 0}},         
    {data: d6, lines: {show: true, fill: true, fillColor: 'rgb(255, 146, 0)', 
                       lineWidth: 0}},          
    {data: d5, lines: {show: true, fill: true, fillColor: 'rgb(255, 255, 0)', 
                       lineWidth: 0}},        
    /*{data: d4, lines: {show: true, fill: true, fillColor: 'rgb(255, 255, 0)', 
                       lineWidth: 0}},    */
                      
    {data: d3, lines: {show: true, fill: true, fillColor: 'rgb(0, 0, 255)', 
                       lineWidth: 0}},
    {data: d2, lines: { show: true, fill: true, fillColor: 'rgb(0, 255, 0)', 
                        lineWidth: 0}},
    {data: points, lines: { show: false},points: { show: true }}
  ], options);

  var previousPoint = null;
  $("#placeholder").bind("plothover", function (event, pos, item) {
    $("#x").text(pos.x.toFixed(2));
    $("#y").text(pos.y.toFixed(2));
    if (item) {
      if (previousPoint != item.datapoint) {
        previousPoint = item.datapoint;
        $("#tooltip").remove();
        var x = item.datapoint[0].toFixed(2),
        y = item.datapoint[1].toFixed(2);
        showTooltip(
          item.pageX, item.pageY, 
          transformer_names[item.dataIndex] + "(" + x + "," + y + ")"); 
      }
    }
    else {
      $("#tooltip").remove();
      previousPoint = null;            
    }
  });
  
}

function plotImportanceIndex(points, transformer_names, xscale_data, yscale_data) {
  var placeholder = $("#placeholder"); 
  var options = {
    series: {lines: { show: false }, points: { show: true }},
    grid: {
      hoverable: true,
      clickable: true,
      markings: [
        {xaxis: {from: 0, to: xscale_data[1][0]}, yaxis: {from: 0, to: yscale_data[1][0] },
         color: 'rgb(0, 255, 0)'},
        {xaxis: {from: xscale_data[1][0], to: xscale_data[2][0]}, yaxis: {from: 0, to: yscale_data[1][0] },
         color: 'rgb(0, 0, 255)'},
        {xaxis: {from: xscale_data[2][0], to: 100}, yaxis: {from: 0, to: yscale_data[1][0] },
         color: 'rgb(255, 146, 0)'},
        {xaxis: {from: 0, to: xscale_data[1][0]}, yaxis: {from: yscale_data[1][0], to: yscale_data[2][0] },
         color: 'rgb(0, 0, 255)'},
        {xaxis: {from: xscale_data[1][0], to: xscale_data[2][0]}, yaxis: {from: yscale_data[1][0], to: yscale_data[2][0] },
         color: 'rgb(255, 255, 0)'},
        {xaxis: {from: xscale_data[2][0], to: 100}, yaxis: {from: yscale_data[1][0], to: yscale_data[2][0] },
         color: 'rgb(255, 146, 0)'},
        {xaxis: {from: 0, to: xscale_data[1][0]}, yaxis: {from: yscale_data[2][0], to: 100 },
         color: 'rgb(255, 146, 0)'},
        {xaxis: {from: xscale_data[1][0], to: xscale_data[2][0]}, yaxis: {from: yscale_data[2][0], to: 100 },
         color: 'rgb(255, 146, 0)'},
        {xaxis: {from: xscale_data[2][0], to: 100}, yaxis: {from: yscale_data[2][0], to: 100 },
         color: 'rgb(255, 0, 0)'}
      ]
    },
    yaxis: { min: 0, max: 100, ticks: [0, yscale_data[1][0], yscale_data[2][0], 100], 
             axisLabel: 'Probability of Failure',
             axisLabelUseCanvas: false,
             axisLabelFontSizePixels: 12,
             axisLabelFontFamily: 'Arial' },
    xaxis: { min: 0, max: 100, ticks: [0, xscale_data[1][0], xscale_data[2][0], 100], 
             axisLabel: 'Transformer Importance',
             axisLabelUseCanvas: true,
             axisLabelFontSizePixels: 12,
             axisLabelFontFamily: 'Arial' }
  };

  var plot = $.plot(placeholder, [ { data: points}], options);
  o = plot.pointOffset({ x: (xscale_data[1][0]/2)-5, y: -1.2});
  placeholder.append('<div style="position:absolute;left:' + 
                     (o.left + 4) + 'px;top:' + o.top + 
                     'px;color:#666;font-size:smaller">' + xscale_data[0][1] + '</div>');
  o = plot.pointOffset({ x: xscale_data[1][0]-5+((xscale_data[2][0]-xscale_data[1][0])/2), y: -1.2});
  placeholder.append('<div style="position:absolute;left:' + 
                     (o.left + 4) + 'px;top:' + o.top + 
                     'px;color:#666;font-size:smaller">' + xscale_data[1][1] + '</div>');
  o = plot.pointOffset({ x: xscale_data[2][0]-5+((100 - xscale_data[2][0])/2), y: -1.2});
  placeholder.append('<div style="position:absolute;left:' + 
                     (o.left + 4) + 'px;top:' + o.top + 
                     'px;color:#666;font-size:smaller">' + xscale_data[2][1] + '</div>');
  o = plot.pointOffset({ x: -12, y: (yscale_data[1][0]/2)});
  placeholder.append('<div style="position:absolute;left:' + 
                     (o.left + 4) + 'px;top:' + o.top + 
                     'px;color:#666;font-size:smaller">' + yscale_data[0][1] + '</div>'); 
  o = plot.pointOffset({ x: -12, y: yscale_data[1][0]+((yscale_data[2][0]-yscale_data[1][0])/2)});
  placeholder.append('<div style="position:absolute;left:' + 
                     (o.left + 4) + 'px;top:' + o.top + 
                     'px;color:#666;font-size:smaller">' + yscale_data[1][1] + '</div>');
  o = plot.pointOffset({ x: -12, y: yscale_data[2][0]+((100 - yscale_data[2][0])/2)});
  placeholder.append('<div style="position:absolute;left:' + 
                     (o.left + 4) + 'px;top:' + o.top + 
                     'px;color:#666;font-size:smaller">' + yscale_data[2][1] + '</div>'); 
  var previousPoint = null;
  $("#placeholder").bind("plothover", function (event, pos, item) {
    $("#x").text(pos.x.toFixed(2));
    $("#y").text(pos.y.toFixed(2));
    if (item) {
      if (previousPoint != item.datapoint) {
        previousPoint = item.datapoint;
        $("#tooltip").remove();
        var x = item.datapoint[0].toFixed(2),
        y = item.datapoint[1].toFixed(2);
        showTooltip(item.pageX, item.pageY, transformer_names[item.dataIndex] + 
                    "(" + x + "," + y + ")"); 
      }
    }
    else {
      $("#tooltip").remove();
      previousPoint = null;            
    }
  });
  
}

function showTooltip(x, y, contents) {
  $('<div id="tooltip">' + contents + '</div>').css({
    position: 'absolute',
    display: 'none',
    top: y + 5,
    left: x + 5,
    border: '1px solid #fdd',
    padding: '2px',
    'background-color': '#fee',
    opacity: 0.90
  }).appendTo("body").fadeIn(200);
}


var app = {
  setupAjax: function () {
    jQuery.ajaxSetup({ 
      'beforeSend': function(xhr) {
        xhr.setRequestHeader("Accept", "text/javascript, text/html, application/xml, text/xml, */*");
      }
    });    
  },
  
  hideElements: function () {
    $('#transformer_name_label').hide();
    $('#transformer_name_select').hide();
  },
  
  setupBusVoltageAndSystemFaultLevel: function () {
    $('#transformer_information_bus_voltage_hv_id').change(function () {
      setSystemFaultLevelHvMva(); 
    });
    $('#transformer_information_system_fault_level_hv').blur(function () {
      setSystemFaultLevelHvMva(); 
    });
    $('#transformer_information_bus_voltage_lv_id').change(function () {
      setSystemFaultLevelLvMva(); 
    });
    $('#transformer_information_system_fault_level_lv').blur(function () {
      setSystemFaultLevelLvMva(); 
    });    
  },

  setupRecordedDate: function () {
    $("#transformer_information_recorded_date").datepicker({
      showOn: 'both',
      dateFormat: 'dd/mm/yy',
      buttonImage: '/ptu3/assets/icon_calendar.gif',
      buttonImageOnly: true
    });    
  },
  
  getPointsForGraphs: function () {
  	//get transformer points
    var url = jQuery.url.attr("path");// + "?q=data_points";
    /*if (jQuery.url.param("region") != null)  {
      url += "&region=" + encodeURI(jQuery.url.param("region"));
    } */
    
    $.get(url, function(data) {
      var jsondata = eval('(' + data + ')');
      var xscale_data = eval('(' + jsondata.xscale + ')');
      var yscale_data = eval('(' + jsondata.yscale + ')');
      var dscale_data = eval('(' + jsondata.dscale + ')');
      var data_points = jsondata.data_points;
      var points = []; 
      var transformer_names = []; 
      var checkedTransformerNames = [];
      $('.transformer_checkbox:checked').each(function () {
        checkedTransformerNames.push(
          $(this).parent().parent().children()[0].innerHTML);
        //alert($(this).parent().parent().children()[1].innerHTML);
      });
      for (var i = 0; i < data_points.length; ++i) { 
        if (jQuery.inArray(data_points[i][0], checkedTransformerNames) > -1) {
          points.push(
            [parseFloat(data_points[i][1]), parseFloat(data_points[i][2])]);
          transformer_names.push(data_points[i][0]); 
          
        }
      }
      if (jQuery.url.param("graph") == "risk") { 
        plotRiskGraph(points, transformer_names, xscale_data, yscale_data, dscale_data);
      } else {
        plotImportanceIndex(points, transformer_names, xscale_data, yscale_data);
      }
      
    });
  },
  
  setupTransformerNameComboxBox: function (id, width) {
    var widgetsJsUrl = '/ptu3/assets/widgets.js';
    $.getScript(widgetsJsUrl, function () {
      WIDGETS.transformerNameComboBox(id, width)
    });
  },
  
  setupDamageOfProperty: function () {
    $("#damage_of_property_1, #damage_of_property_2, #damage_of_property_3," +
      "#damage_of_property_4").click(function() {
        if ($('#damage_of_property_1').attr('checked') || 
            $('#damage_of_property_2').attr('checked') ||
            $('#damage_of_property_3').attr('checked') ||
            $('#damage_of_property_4').attr('checked')) {
          $('#damage_of_property_5').attr('disabled', true); 
        } 
        if (!$('#damage_of_property_1').attr('checked') && 
            !$('#damage_of_property_2').attr('checked') &&
            !$('#damage_of_property_3').attr('checked') &&
            !$('#damage_of_property_4').attr('checked')) {
          $('#damage_of_property_5').attr('disabled', false); 
        }
      });
    
    $('#damage_of_property_5').click(function () {
      if ($('#damage_of_property_5').attr('checked')) { 
        $('#damage_of_property_1').attr('disabled', true); 
        $('#damage_of_property_2').attr('disabled', true); 
        $('#damage_of_property_3').attr('disabled', true); 
        $('#damage_of_property_4').attr('disabled', true); 
      }
      if (!$('#damage_of_property_5').attr('checked')) { 
        $('#damage_of_property_1').attr('disabled', false); 
        $('#damage_of_property_2').attr('disabled', false); 
        $('#damage_of_property_3').attr('disabled', false); 
        $('#damage_of_property_4').attr('disabled', false); 
      }
    });     
  }
}; 


$(document).ready(function() {
	app.setupAjax();
	
  $('a.title').cluetip({
    dropShadow: false, cluetipClass: 'rounded', showTitle: false
  });
  
  $.facebox.settings.closeImage = '/ptu3/assets/facebox/closelabel.png';
	$.facebox.settings.loadingImage = '/ptu3/assets/facebox/loading.gif';
  $('a[rel*=facebox]').facebox();
 

  app.hideElements(); 
  
  app.setupBusVoltageAndSystemFaultLevel();
  
  app.setupRecordedDate();
  
  if ($('#placeholder').length > 0) {
    app.getPointsForGraphs();
  }

 /* if ($('#transformer_transformer_id').length > 0) {
    app.setupTransformerNameComboxBox('transformer_transformer_id', 200);
  }
  if ($('#transformer_information_transformer_id').length > 0) {
    app.setupTransformerNameComboxBox(
      'transformer_information_transformer_id', 200);
  }
*/
  app.setupDamageOfProperty();
  
  $('#select_all').attr('checked', true);
  $('.transformer_checkbox').attr('checked', true);
  
  $('.transformer_checkbox').change(function () {
    var allChecked = true;
    $('.transformer_checkbox').each(function() {
      if (!$(this).attr('checked')) {
        allChecked = false;
      }
    });
    if (!allChecked) {
      $('#select_all').attr('checked', false);
    } else {
      $('#select_all').attr('checked', true);
    }
    app.getPointsForGraphs();
  });
  
  $('#select_all').change(function () {
    if ($(this).attr('checked')) {
      $('.transformer_checkbox').each(function () {
        $(this).attr('checked', true);
      });
    } else {
      $('.transformer_checkbox').each(function () {
        $(this).attr('checked', false);
      });      
    }
    app.getPointsForGraphs();
  });
  
  
  $('#station_station').change(function() {
    var region = $('#station_station :selected').text();
    var queryString = "?";
    if (jQuery.url.param("graph") != undefined) {
      queryString += "graph=" + jQuery.url.param("graph");
    }    
    if (region != 'All') {
      queryString += "&region=" + encodeURI(region); 
      window.location.replace('/ptu3/transformer_informations' + queryString);
    } else {
      window.location.replace('/ptu3/transformer_informations' + queryString);
    }
  });
  
  $('.importance_index').live('click', function () {
    var id = $(this).parents('tr:first').find('td:first').text();
    jQuery.facybox({ajax: '/ptu3/transformer_informations/show/' + id});
    return false;
  });

  $("#transformers_table").tablesorter({
    headers: {7 : {sorter: false}}
  }); 
});
