/**
 * 
 */
App.controller('t1Controller', ["$scope", "$uibModal", "$http",'$state',function ($scope,  $uibModal,$http,$state) {

	$scope.children =[];
	var count = 0;
	
	//add children
	$scope.openAddChildModel = function() {
		
		if($scope.id==null){
			alert("Please input id")
		}else{
			var modalInstance = $uibModal.open({
				templateUrl: 'views/t3.jsp',
				controller: 'ModalInstanceCtrl',
				resolve: {
						 childid: function(){
							 
							 return $scope.id;
						 },
						 countnum : function(){
							 count =count+1;
							 return count;
						 }
			    }
		    });
			modalInstance.result.then(function (data) {
				
				$scope.children.push(data);
			});
		}
	};
	
	//submit the whole form
	$scope.submit= function(){
		var userdata ={
				id: $scope.id,
				age:$scope.age,
				userName:$scope.name
		}
		$http.post('/CS580/addUser',userdata)
		.success(function(response){
			$http.post('/CS580/createChildren',$scope.children)
			.success(function(response){
				$state.go("search");
			})
			.error(function(errResponse){
				alert("保存失败-保存孩子失败");
			});
		})
		.error(function(errResponse){
			alert("保存失败");
		});
		
		
		
	}
	
}])
.controller('ModalInstanceCtrl',["$scope",  "$uibModalInstance" ,"childid","countnum", function ($scope,  $uibModalInstance,childid,countnum) {
	$scope.child={
			id: childid+"_"+countnum,
			name:'',
			age:'',
			userid:childid
	};
	$scope.addChild = function() {
		
		$uibModalInstance.close($scope.child);
	};
	$scope.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
}])
.controller('searcht1Controller',["$scope","data",function($scope,data){
	$scope.users = data;
	
}]);
