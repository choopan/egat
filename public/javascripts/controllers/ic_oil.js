function clear_ic_payment() {
  var f = document.payment_cost;
  f["ic_allcost[oc1]"].value = 0;
  f["ic_allcost[oc2]"].value = 0;
  f["ic_allcost[oc3]"].value = 0;
  f["ic_allcost[oc4]"].value = 0;
  f["ic_allcost[oc5]"].value = 0;
  f["ic_allcost[oc6]"].value = 0;
  f["ic_allcost[oc7]"].value = 0;
  f["ic_allcost[oc8]"].value = 0;
  f["ic_allcost[oc9]"].value = 0;
  f["ic_allcost[oc10]"].value = 0;
  f["ic_allcost[x1]"].value = 0;
  f["ic_allcost[x2]"].value = 0;
  f["ic_allcost[x3]"].value = 0;
  f["ic_allcost[x4]"].value = 0;
  f["ic_allcost[x5]"].value = 0;
  f["ic_allcost[x6]"].value = 0;
  f["ic_allcost[x7]"].value = 0;
}

function summation_ordering_cost() {

  var d, sum = 0, f = document.payment_cost;
  d = Number(f["ic_allcost[oc1]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["ic_allcost[oc2]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["ic_allcost[oc3]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["ic_allcost[oc4]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["ic_allcost[oc5]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["ic_allcost[oc6]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["ic_allcost[oc7]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["ic_allcost[oc8]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["ic_allcost[oc9]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  d = Number(f["ic_allcost[oc10]"].value);
  if(isNaN(d)) d = 0;
  sum += d;

  f["ic_allcost[x1]"].value = sum;
};


$(function() {
  summation_ordering_cost();
});
