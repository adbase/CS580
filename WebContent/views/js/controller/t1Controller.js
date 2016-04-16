/**
 * 
 */
App.controller('t1Controller', ["$scope", "$uibModal", "$http",'$state',function ($scope,  $uibModal,$http,$state) {
	 var $container = $("#example1");
	var mydata = getData();
	$container.handsontable({
	    data: mydata,
	    rowHeaders: true,
	    colHeaders: true,
	    contextMenu: true,
	    autoWrapRow: true,
	    stretchH: 'all',
	    colHeaders: ['Status','Upper OP','Tour Name','No.','Start on','Strat Loc','End on','End loc'],
	    columns: [ {
	        type: 'dropdown',
	        source: ['已顶团', '已结束，欠地接社帐', '未定团', '已封帐', '已结束，欠西海岸地接费', '已结束，组团社还没交我们钱', '已结束，欠导游工资', '已取消']
	      },{
	    	  type: 'text'
	      },{
	    	  type: 'text'
	      },{
	    	  type: 'text'
	      },{
	    	  type: 'date',
	    	  dateFormat: 'MM/DD/YYYY'
	      },{
	    	  type: 'dropdown',
	    	  source :getLoc()
	      },{
	    	  type: 'date',
	    	  dateFormat: 'MM/DD/YYYY'
	      },{
	    	  type: 'dropdown',
	    	  source :getLoc()
	      }
	              ]
	  });
	  
	  // This way, you can access Handsontable api methods by passing their names as an argument, e.g.:
	  var hotInstance = $("#example1").handsontable('getInstance');
	  
	  
	function getData() {
	    return [
	      ['','','','','','','','','','','','']
	    ];
	  }
	function getLoc() {
		 return [
		    '全部已定','全部未定','BIGSKY','FRESNO','MOAB','爱德华瀑布','巴斯托','波兹曼','丹麦城','杰克逊','San F','卡梅尔','拉芙琳','拉斯'
		 ];
	}
	$("#addTrip").click(function() {
		mydata.push(['','','','','','','','','','','','']);
	    $("#example1").handsontable("render");
	});
		
	 $("#Submit").click(function() {
		 var tableData = $("#example1").handsontable("getData");
		 var formDataJson = JSON.stringify({"data":tableData});
		 alert(formDataJson);
		 jQuery.ajax({
             type: "POST",
             headers: {
                 'Accept': 'application/json',
                 'Content-Type': 'application/json'
             },
             'url': "/TMS/saveTrip",
             'data':  formDataJson,
             'dataType': 'json'
		 });
	 })
	
	}
 ]);
