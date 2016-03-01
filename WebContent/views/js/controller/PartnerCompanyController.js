/**
 * 
 */
App.controller('partnerCompanyController', ["$scope", "$uibModal", "$http",'$state','async','type','ParnterCompanyService',
                                            function ($scope, $uibModal, $http, $state, async, type, ParnterCompanyService) {
	
	$scope.type ='';
	$scope.companies=async;
	if(type=='vehicle'){
		$scope.type = '车辆';
	}else if(type == 'flight'){
		$scope.type = '机票';
	}else if(type == 'hotel'){
		$scope.type = '酒店';
	}else if(type == 'local'){
		$scope.type = '地接社';
	}
	
	
	
	
	//add function
	$scope.openAddModel = function() {
		var modalInstance = $uibModal.open({
			templateUrl: 'views/page-partnerCompany/addCompany.jsp',
			controller: 'AddCompany',
			resolve: {
					 childid: ['ParnterCompanyService',function(ParnterCompanyService){
						 
						 return ParnterCompanyService.createID();
					 }],
					 type: function(){
						 return type;
					 }
					
		    }
	    });
		modalInstance.result.then(function (data) {
			$scope.companies = ParnterCompanyService.searchAllCompanyByType(data)
			.then(
                    function(d) {
                    	$scope.companies = d;
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
			templateUrl: 'views/page-partnerCompany/editCompany.jsp',
			controller: 'EditCompany',
			resolve: {
					 childid: function(){
						 for(var i = 0; i < $scope.companies.length; i++){
			                  if($scope.companies[i].id === id) {
			                	 $scope.company= angular.copy($scope.companies[i]);
			                     break;
			                  }
			              }
						 return $scope.company;
					 }
			}							    
	    });
		modalInstance.result.then(function (data) {
			$scope.companies = ParnterCompanyService.searchAllCompanyByType(data)
			.then(
                    function(d) {
                    	$scope.companies = d;
                   },
                    function(errResponse){
                        console.error('查询列表失败');
                    }
           );
			
		});
	};
	
	//remove function
	$scope.remove = function(id) {
		

		$http.delete('/CS580/deletePartnerCompany/'+id)
		.then(
                function(response){
                	$scope.companies = ParnterCompanyService.searchAllCompanyByType(type)
        			.then(
                            function(d) {
                            	$scope.companies = d;
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
.controller('AddCompany',["$scope",  "$uibModalInstance" ,"childid","$http", 'type', function ($scope, $uibModalInstance, childid, $http, type) {
	
	$scope.company={
			id: childid.message,
			name:'',
			contact:'',
			phone:'',
			address:'',
			type:type,
			comment:''
			
	};
	$scope.addCompany = function() {
		if($scope.company.name!=''){
			$http.post('/CS580/addNewPartnerCompany',$scope.company)
			.success(function(response){
				$uibModalInstance.close($scope.company.type);
			}).error(function(errResponse){
				alert("新增供应商失败");
			});
		}else{
			alert("请输入公司名称");
		}
		
	};
	$scope.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
}])
.controller('EditCompany',["$scope",  "$uibModalInstance" ,"childid","$http", function ($scope,  $uibModalInstance,childid,$http) {
	$scope.company = childid;
	
	$scope.updateCompany = function(){
		if($scope.company.name!=''){
			$http.post('/CS580/updatePartnerCompany',$scope.company)
			.success(function(response){
				$uibModalInstance.close($scope.company.type);
			}).error(function(errResponse){
				alert("新增供应商失败");
			});
		}else{
			alert("请输入公司名称");
		}
	}
	
	$scope.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
}]);