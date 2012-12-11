$(window).load(function() {
   $('#featured').orbit();
   $('#featured').show();
   $(".date").datepicker({
	    changeMonth: true,
	    changeYear: true,
	    yearRange : 'c-90:c+0'
   });
   for(var i=0; i < ids.length;i++){
   		var color = 'red';
   		if(datas[i][0][1] == 'Smartness') color = 'blue';
		$('#' + ids[i] + 'simpleGraph').jqBarGraph({ 
	      data: datas[i], // array of data for your graph
	      colors: [color,'#EEEEEE'],
	      width: 40,
	      height: 100,
	      barSpace: 0,
	      speed: .5,
	      //showValues: false,
	      title:false,
	      lbl: ''
	      // title:false, // title of your graph, accept HTML
	      // barSpace: 0, // this is default space between bars in pixels
	      // width: 40, // default width of your graph
	      // height: 100, //default height of your graph
	      // color: '#000000', // if you don't send colors for your data this will be default bars color
	      // 
	      // lbl: '', // if there is no label in your array
	      // sort: false, // sort your data before displaying graph, you can sort as 'asc' or 'desc'
	      // position: 'bottom', // position of your bars, can be 'bottom' or 'top'. 'top' doesn't work for multi type
	      // prefix: '', // text that will be shown before every label
	      // postfix: '', // text that will be shown after every label
	      // animate: true, // if you don't need animated appearance change to false
	      // speed: 2, // speed of animation in seconds
	      // legendWidth: 100, // width of your legend box
	      // legend: false, // if you want legend change to true
	      // legends: false, // array for legend. for simple graph type legend will be extracted from labels if you don't set this
	      // type: false, // for multi array data default graph type is stacked, you can change to 'multi' for multi bar type
	      // showValues: true, // you can use this for multi and stacked type and it will show values of every bar part
	      // showValuesColor: '#fff' // color of font for values
	    });
		$('#graphValue0' + ids[i] + 'simpleGraph').remove();
		$('#' + ids[i] + 'simpleGraph').css('height',80);
		var subBars = jQuery.makeArray($('.subBars' + ids[i] + 'simpleGraph'));
		$(subBars[0]).html('');
		$(subBars[1]).html( votes[i] )

		$('#graphFieldBar0' + ids[i] + 'simpleGraph')
					 .attr('title',datas[i][0][0][0] + '%')
					 .addClass('has-tip tip-right')
					 .attr('data-width',40);
	}
});