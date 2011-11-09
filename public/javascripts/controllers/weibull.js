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
	displaysub(transformerId);
/*
   var phase_position = Ext.getCmp('phase_position');
        if(transformerId=='1'){
                phase_position.enable();
        }else{
                phase_position.disable();
        }
*/
};

/*
function displaysub() {
    var xobj = document.dynamiccombo.select_manufacturer;
    var x  = xobj.options[xobj.selectedIndex].value;
    var cacheobj=document.dynamiccombo.manufacturer_1;
        cacheobj.options.length = 0;
        if(x=="Bushing"){
                <%if @numBushing!=0%>
                        <%for i in 0..@numBushing-1 do%>
                                cacheobj.options[<%=i%>]=new Option('<%=@bushing[i].manufacturer%>','<%=@bushing[i].manufacturer%>');
                        <%end%>
                <%end%>
                cacheobj.options[0].selected=true;
        }else if(x=="Arrester"){
                <%if @numArrester!=0%>
                        <%for i in 0..@numArrester-1 do%>
                                cacheobj.options[<%=i%>]=new Option('<%=@arrester[i].manufacturer%>','<%=@arrester[i].manufacturer%>');
                        <%end%>
                <%end%>
                cacheobj.options[0].selected=true;
        }else{
                <%if @numOltc!=0%>
                        <%for i in 0..@numOltc-1 do%>
                                cacheobj.options[<%=i%>]=new Option('<%=@oltc[i].manufacturer%>','<%=@oltc[i].manufacturer%>');
                        <%end%>
                <%end%>
                cacheobj.options[0].selected=true;
        
        }
                
}
*/

$(function() {
  //Cbox.setupComboxBox('select_manufacturer');
  Cbox.setupComboxBox('voltage');
  Cbox.setupComboxBox('manufacturer');
  Cbox.setupComboxBox('type');
  Cbox.setupComboxBox('failuredetail');

  Phase.setupTransformerNameComboxBox('select_manufacturer');
});

