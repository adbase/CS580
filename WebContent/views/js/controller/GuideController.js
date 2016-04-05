/**
 * Danqing Zhao
 */
App.controller('guideController', ["$scope", "$uibModal", "$http",'$state','async','GuideService','partnerCompany',
                              function ($scope, $uibModal, $http, $state, async, GuideService, partnerCompany) {
	$scope.guides = async;
	$scope.parnters = partnerCompany;
	$scope.guidesshow = async;
	
	for(var i=0;i< $scope.guidesshow.length ;i++){
		for(var j=0; j<$scope.parnters.length ;j++){
			if($scope.guidesshow[i].companyid==$scope.parnters[j].id){
				$scope.guidesshow[i].companyid=$scope.parnters[j].name;
			}
		}
	}
	//add function
	$scope.openAddModel = function() {
		var modalInstance = $uibModal.open({
			templateUrl: 'views/page-guides/add.jsp',
			controller: 'AddGuide',
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
			$scope.vehciles = GuideService.searchAllGuides()
			.then(
                    function(d) {
                    	$scope.guides = d;
                    	$scope.guidesshow = d;
                    	
                    	for(var i=0;i< $scope.guidesshow.length ;i++){
                    		for(var j=0; j<$scope.parnters.length ;j++){
                    			if($scope.guidesshow[i].companyid==$scope.parnters[j].id){
                    				$scope.guidesshow[i].companyid=$scope.parnters[j].name;
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
			templateUrl: 'views/page-guides/edit.jsp',
			controller: 'EditGuide',
			resolve: {
					 childid: function(){
						 for(var i = 0; i < $scope.guides.length; i++){
			                  if($scope.guides[i].id === id) {
			                	 $scope.guide= angular.copy($scope.guides[i]);
			                     break;
			                  }
			              }
						 return $scope.guide;
					 },
					 partnerCompany: function(){
						 return partnerCompany;
					 }
					
			}							    
	    });
		modalInstance.result.then(function (data) {
			$scope.vehciles = GuideService.searchAllGuides()
			.then(
                    function(d) {
                    	$scope.guides = d;
                    	$scope.guidesshow = d;
                    	
                    	for(var i=0;i< $scope.guidesshow.length ;i++){
                    		for(var j=0; j<$scope.parnters.length ;j++){
                    			if($scope.guidesshow[i].companyid==$scope.parnters[j].id){
                    				$scope.guidesshow[i].companyid=$scope.parnters[j].name;
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
		

		$http.delete('/TMS/deleteGuide/'+id)
		.then(
                function(response){
                	$scope.guides = GuideService.searchAllGuides()
        			.then(
                            function(d) {
                            	$scope.guides = d;
                            	$scope.guidesshow = d;
                            	
                            	for(var i=0;i< $scope.guidesshow.length ;i++){
                            		for(var j=0; j<$scope.parnters.length ;j++){
                            			if($scope.guidesshow[i].companyid==$scope.parnters[j].id){
                            				$scope.guidesshow[i].companyid=$scope.parnters[j].name;
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
.controller('AddGuide',["$scope",  "$uibModalInstance" ,"childid","$http", 'partnerCompany', function ($scope, $uibModalInstance, childid, $http, partnerCompany) {
	
	$scope.guide={
			id: childid.message,
			name_chn:'',
			name_eng:'',
			phone:'',
			companyid:''
			
	};
	$scope.partners=partnerCompany;
	
	$scope.add = function() {
		//alert(JSON.stringify($scope.guide));
		if($scope.guide.name_chn!=''){
			$http.post('/TMS/addNewGuide',$scope.guide)
			.success(function(response){
				$uibModalInstance.close($scope.guide);
			}).error(function(errResponse){
				alert("新增失败");
			});
			//alert(JSON.stringify($scope.vehicle));
		}else{
			alert("请输入姓名");
		}
		
	};
	$scope.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
}])
.controller('EditGuide',["$scope",  "$uibModalInstance" ,"childid","$http", 'partnerCompany', function ($scope, $uibModalInstance, childid, $http, partnerCompany) {
	
	$scope.guide = childid;	
	$scope.partners=partnerCompany;
	$scope.update = function(){
		if($scope.guide.companyid!=''){
			$http.post('/TMS/updateGuide',$scope.guide)
			.success(function(response){
				$uibModalInstance.close($scope.guide);
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
	