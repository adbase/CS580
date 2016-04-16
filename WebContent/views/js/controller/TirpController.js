/**
 * 
 */
<<<<<<< HEAD
App.controller('TripController', [
		"$scope",
		"$uibModal",
		"$http",
		'$state',
		'async',
		'TripService',
		function($scope, $uibModal, $http, $state, async, TripService) {
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
=======
App.controller('TripController', ["$scope", "$uibModal", "$http",'$state','async','TripService',
                                  function ($scope, $uibModal, $http, $state, async, TripService) {
	
	$scope.trips = async;
	
	$scope.edit = function(){
		alert(1);
	}
}])

//新建行程
App.controller('addTripController', ["$scope", "$uibModal", "$http",'$state','guides','TripService', 'localPartner',
                                  function ($scope, $uibModal, $http, $state, guides, TripService,localPartner) {
	$scope.trip={
			id:'',
			status:'',
			upper_op:'',
			tour_name:'',
			num_people:'',
			start_date:'',
			start_Loc:'',
			end_date:'',
			end_Loc:''
	};
	
	
	$scope.updateLocalOP = function(){
		//alert(JSON.stringify($scope.trip.startpartnercompanyid));
		for(var i=0; i<$scope.localPartner.length; i++){
			
			if($scope.localPartner[i].id==$scope.trip.startpartnercompanyid){
				$scope.trip.startpartnercompanyname=$scope.localPartner[i].name;
			}
		}
		//alert(JSON.stringify($scope.trip.startpartnercompanyname));
		$scope.localguides.splice(0,$scope.localguides.length);
		for(var i=0; i<$scope.guides.length; i++){
			//alert(JSON.stringify());
			if($scope.guides[i].companyid==$scope.trip.startpartnercompanyid){
				$scope.localguides.push($scope.guides[i]);
			}
		}
		//alert(JSON.stringify($scope.localguides));
	};
	
	$scope.updateLocalOPname = function(){	
		for(var i=0; i<$scope.guides.length; i++){			
			if($scope.guides[i].id==$scope.trip.startpartnercompanyopid){
				$scope.trip.startpartnercompanyopname = $scope.guides[i].name_chn;			
			}	
		}
	};
	//local company
	$scope.localguides1=[];
	$scope.localcompany1=[];
	
	for(var i=0; i<$scope.localPartner.length; i++){
		if($scope.localPartner[i].id!='2016-2-28 9:30:07'){
			$scope.localcompany1.push($scope.localPartner[i]);
		}
	}
	
	$scope.updateLocalOP2 = function(){
		//alert(JSON.stringify($scope.trip.startpartnercompanyid));
		for(var i=0; i<$scope.localPartner.length; i++){
			
			if($scope.localPartner[i].id==$scope.trip.localPartnercompanyid){
				$scope.trip.localPartnercompanyname=$scope.localPartner[i].name;
			}
		}
		//alert(JSON.stringify($scope.trip.startpartnercompanyname));
		$scope.localguides1.splice(0,$scope.localguides1.length);
		for(var i=0; i<$scope.guides.length; i++){
			//alert(JSON.stringify());
			if($scope.guides[i].companyid==$scope.trip.localPartnercompanyid){
				$scope.localguides1.push($scope.guides[i]);
			}
		}
		//alert(JSON.stringify($scope.localguides));
	};
	
	$scope.updateLocalOPname2 = function(){	
		for(var i=0; i<$scope.guides.length; i++){			
			if($scope.guides[i].id==$scope.trip.localPartnercompanyopid){
				$scope.trip.localPartnercompanyopname = $scope.guides[i].name_chn;			
			}	
		}
	};
	
	///add trip steps
	
	$scope.tripsteps=[];
	$scope.addTripStepModel= function(){
		if($scope.trip.id!=''){
			
			var modalInstance = $uibModal.open({
				
				templateUrl: 'views/page-trips/newTripSteps.jsp',
				controller: 'AddTripSteps',
				resolve: {
						 childid: ['ParnterCompanyService',function(ParnterCompanyService){
							 
							 return ParnterCompanyService.createID();
						 }],
						 hotel:['ParnterCompanyService',function(ParnterCompanyService){
							 
							 return ParnterCompanyService.searchAllCompanyByType('hotel');
						 }],
						 flight:['ParnterCompanyService',function(ParnterCompanyService){
							 
							 return ParnterCompanyService.searchAllCompanyByType('flight');
						 }],
						 vehicle:['VechileService',function(VechileService){
							 
							 return VechileService.searchAllVechile();
						 }],
						 tripid : function(){
							 return $scope.trip.id;
						 },
						 guides : function(){
							 return $scope.guides;
						 }	
			    }			
			})
	    
		}else{
			alert("请输入团号");
		}
		
		modalInstance.result.then(function (data) {
			$scope.tripsteps.push(data);
			
		});
	}
	
	//eidt steps
	$scope.edit = function(id){
		
		var modalInstance = $uibModal.open({
			templateUrl: 'views/page-trips/edit.jsp',
			controller: 'EditTripSteps',
			resolve: {
					 childid: function(){
						return id; 
					 },
					 hotel:['ParnterCompanyService',function(ParnterCompanyService){
						 
						 return ParnterCompanyService.searchAllCompanyByType('hotel');
					 }],
					 flight:['ParnterCompanyService',function(ParnterCompanyService){
						 
						 return ParnterCompanyService.searchAllCompanyByType('flight');
					 }],
					 vehicle:['VechileService',function(VechileService){
						 
						 return VechileService.searchAllVechile();
					 }],
					 tripid : function(){
						 return $scope.trip.id;
					 },
					 guides : function(){
						 return $scope.guides;
					 },
					 tripsteps : function(){
						 return $scope.tripsteps;
					 } 
					
					 
					 
>>>>>>> origin/master
					
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
				
				
		} ])