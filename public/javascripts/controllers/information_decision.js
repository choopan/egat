function summation_repair_information() {

  var d, sum = 0, f = document.repair_information;
  d = Number(f["repair_information[winding_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[bushing_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[arrester_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[oltc_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[hotline_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[cooling]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[overhaul]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[overhaul_and_refurbish]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[rep_rubber_bag]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[rep_bct]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["repair_information[others]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  document.repair_information.sum_cost.value  = sum;
  //document.repair_information.sum_cost.value = f["repair_information[winding_cost]"].value;
};

function summation_option1_information() {

  var d, sum = 0, f = document.option1_information;
  d = Number(f["eco_option1[winding_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[bushing_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[arrester_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[oltc_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[hotline_cost]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[cooling]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[overhaul]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[overhaul_and_refurbish]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[rep_rubber_bag]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[rep_bct]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["eco_option1[others]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  document.option1_information.sum_cost.value  = sum;
  //document.repair_information.sum_cost.value = f["repair_information[winding_cost]"].value;
};

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
    window.location.href = "/transformers/" + transformerId + "/information_decision/new";
  } else {
    window.location.href = "/transformers/" + transformerId + "/information_decision";
  }
};

$(function() {
  PriceLoss.setupTransformerNameComboxBox('transformer_id');
  PriceLoss.setupTransformerNameComboxBox('information_decision_transformer_id');
  summation_repair_information();
  summation_option1_information();
  $("#tabs").tabs();
});
