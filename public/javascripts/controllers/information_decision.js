var PriceLoss = { };

function summation_repair_information(id) {
  //alert(document.repair_information.getElementById(repair_information_winding_cost).value);
 /*
  var d, sum = 0, f = document.repair_information;
  d = Number(f.winding_cost.value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f.bushing_cost.value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f.arrester_cost.value);
  if(isNaN(d)) d = 0;
  sum += d;


  f.sum_cost.disabled = false;
  f.sum_cost.value = sum;
  */
  //f.sum_cost.disabled = true;
  id.repair_information_sum_cost.value = 5;
}


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
//  summation_repair_information('repair_information');  
  $("#tabs").tabs();
});
