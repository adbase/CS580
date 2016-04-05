/**
 * Danqing Zhao
 */
App.controller('vehcileController', ["$scope", "$uibModal", "$http",'$state','async','VechileService','partnerCompany',
                              function ($scope, $uibModal, $http, $state, async, VechileService, partnerCompany) {
	
	$scope.vehicles = async;
	$scope.parnters = partnerCompany;
	$scope.vehicleshow = async;
	
	for(var i=0;i< $scope.vehicleshow.length ;i++){
		for(var j=0; j<$scope.parnters.length ;j++){
			if($scope.vehicleshow[i].companyid==$scope.parnters[j].id){
				$scope.vehicleshow[i].companyid=$scope.parnters[j].name;
			}
		}
	}
	//add function
	$scope.openAddModel = function() {
		var modalInstance = $uibModal.open({
			templateUrl: 'views/page-vehicleMangement/add.jsp',
			controller: 'AddVehicle',
			resolve: {
					 childid: ['ParnterCompanyService',function(ParnterCompanyService){
						 
						 return ParnterCompanyService.createID();
					 }],
					 partnerCompany: function(){
						 return partnerCompany;
					 }
					
		    }
	    });
		modalInstance.result.then(function (data) {
			$scope.vehciles = VechileService.searchAllVechile()
			.then(
                    function(d) {
                    	$scope.vehciles = d;
                    	$scope.vehicleshow = d;
                    	
                    	for(var i=0;i< $scope.vehicleshow.length ;i++){
                    		for(var j=0; j<$scope.parnters.length ;j++){
                    			if($scope.vehicleshow[i].companyid==$scope.parnters[j].id){
                    				$scope.vehicleshow[i].companyid=$scope.parnters[j].name;
                    			}
                    		}
                    	}
                   },
                    function(errResponse){
                        console.error('查询列表失败');
                    }
           );
			
		});
	};
	
	//edit function
	$scope.edit = function(id) {
		var modalInstance = $uibModal.open({
			templateUrl: 'views/page-vehicleMangement/edit.jsp',
			controller: 'EditVehicle',
			resolve: {
					 childid: function(){
						 for(var i = 0; i < $scope.vehicles.length; i++){
			                  if($scope.vehicles[i].id === id) {
			                	 $scope.vehicle= angular.copy($scope.vehicles[i]);
			                     break;
			                  }
			              }
						 return $scope.vehicle;
					 },
					 partnerCompany: function(){
						 return partnerCompany;
					 }
					
			}							    
	    });
		modalInstance.result.then(function (data) {
			$scope.vehciles = VechileService.searchAllVechile()
			.then(
                    function(d) {
                    	$scope.vehciles = d;
                    	$scope.vehicleshow = d;
                    	
                    	for(var i=0;i< $scope.vehicleshow.length ;i++){
                    		for(var j=0; j<$scope.parnters.length ;j++){
                    			if($scope.vehicleshow[i].companyid==$scope.parnters[j].id){
                    				$scope.vehicleshow[i].companyid=$scope.parnters[j].name;
                    			}
                    		}
                    	}
                   },
                    function(errResponse){
                        console.error('查询列表失败');
                    }
           );
			
		});
	};
	//remove function
	$scope.remove = function(id) {
		

		$http.delete('/TMS/deleteVehicle/'+id)
		.then(
                function(response){
                	$scope.vehciles = VechileService.searchAllVechile()
        			.then(
                            function(d) {
                            	$scope.vehciles = d;
                            	$scope.vehicleshow = d;
                            	
                            	for(var i=0;i< $scope.vehicleshow.length ;i++){
                            		for(var j=0; j<$scope.parnters.length ;j++){
                            			if($scope.vehicleshow[i].companyid==$scope.parnters[j].id){
                            				$scope.vehicleshow[i].companyid=$scope.parnters[j].name;
                            			}
                            		}
                            	}
                           },
                            function(errResponse){
                                console.error('查询列表失败');
                            }
                   );
                }, 
                function(errResponse){
                   alert('Error while deleting company');
                   
                })
	};
}])
.controller('AddVehicle',["$scope",  "$uibModalInstance" ,"childid","$http", 'partnerCompany', function ($scope, $uibModalInstance, childid, $http, partnerCompany) {
	
	$scope.vehicle={
			id: childid.message,
			v_type:'',
			companyid:'',
			comment:''
			
	};
	$scope.partners=partnerCompany;
	$scope.add = function() {
		if($scope.vehicle.v_type!=''){
			$http.post('/TMS/addNewVehicle',$scope.vehicle)
			.success(function(response){
				$uibModalInstance.close($scope.vehicle);
			}).error(function(errResponse){
				alert("新增失败");
			});
			//alert(JSON.stringify($scope.vehicle));
		}else{
			alert("请输入车辆类型");
		}
		
	};
	$scope.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
}])
.controller('EditVehicle',["$scope",  "$uibModalInstance" ,"childid","$http", 'partnerCompany', function ($scope, $uibModalInstance, childid, $http, partnerCompany) {
	
	$scope.vehicle = childid;	
	$scope.partners=partnerCompany;
	$scope.update = function(){
		if($scope.vehicle.companyid!=''){
			$http.post('/TMS/updateVehicle',$scope.vehicle)
			.success(function(response){
				$uibModalInstance.close($scope.vehicle);
			}).error(function(errResponse){
				alert("新增失败");
			});
		}else{
			alert("请输入名称");
		}
	}
	
	$scope.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
}])
	