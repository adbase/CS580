/**
 * 
 */
App.controller('TripController', ["$scope", "$uibModal", "$http",'$state','async','TripService',
                                  function ($scope, $uibModal, $http, $state, async, TripService) {
	
	$scope.trips = async;
	

}])

//新建行程
App.controller('addTripController', ["$scope", "$uibModal", "$http",'$state','guides','TripService', 'localPartner',
                                  function ($scope, $uibModal, $http, $state, guides, TripService,localPartner) {
	$scope.trip={
			id:'',
			contact:'',
			phone:'',
			email:'',
			name:'',
			num_people:'',
			overtime_payment_type:'',
			start_date:'',
			overtime_rate:'',
			end_date:'',
			disable_account:"",
			startpartnercompanyid:'',
			startpartnercompanyname:'',
			localPartnercompanyid:'',
			localPartnercompanyname:'',
			startpartnercompanyopid:'',
			startpartnercompanyopname:'',
			status:'',
			localPartnercompanyopid:'',
			localPartnercompanyopname:'',
			partner_team_id:''
	}
	$scope.localPartner = localPartner;
	$scope.guides =guides;
	//generate a array containing the people belongs our company. 
	$scope.myGuides = [];
	for(var i=0; i<$scope.guides.length; i++){
		//alert(JSON.stringify());
		if($scope.guides[i].companyid=='2016-2-28 9:30:07'){
			$scope.myGuides.push($scope.guides[i]);
		}
	}
	//update phone number value according the choice of the op
	$scope.updatePhone = function(){
		
		for(var i=0; i<$scope.guides.length; i++){
			//alert(JSON.stringify());
			if($scope.guides[i].id==$scope.trip.contact){
				$scope.trip.phone = $scope.guides[i].phone;
				
			}
		}
	};
	
	//start company 
	$scope.localguides =[];
	$scope.localcompany =[];
	for(var i=0; i<$scope.localPartner.length; i++){
		if($scope.localPartner[i].id!='2016-2-28 9:30:07'){
			$scope.localcompany.push($scope.localPartner[i]);
		}
	}
	
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
					
					 
					 
					
		    }
	    });
		modalInstance.result.then(function (data) {
			$scope.tripsteps = data;
			
		});
	}
	
	//remove steps
	$scope.remove = function(id){
		
		for(var i=0; i<$scope.tripsteps.length ;i++){
			if($scope.tripsteps[i].id==id){
				$scope.tripsteps.splice(i,1);
			}
		}
		
	}
	
	//submit
	$scope.submit = function(){
		$http.post('/CS580/addTrip',$scope.trip)
		.success(function(response){
			$http.post('/CS580/addTripsteps',$scope.tripsteps)
			.success(function(response){
				$state.go("listTrip");
			})
			.error(function(errResponse){
				alert("保存失败-保存孩子失败");
			});
		})
		.error(function(errResponse){
			alert("保存失败");
		});
	}
	
}]);
App.controller('AddTripSteps',["$scope",  "$uibModalInstance" ,"childid","$http", 'hotel', 'flight','vehicle','tripid','guides',
                     function ($scope, $uibModalInstance, childid, $http, hotel,flight,vehicle,tripid,guides) {
	$scope.vehicles =vehicle;
	
	$scope.hotels =hotel;
	$scope.guides =guides;
	//alert(JSON.stringify($scope.guides));
	$scope.tripstep={
			id: childid.message,
			date:'',
			trip_plan_location:'',
			type:'',
			vehicle_location:'',
			vehicle_type:'',
			use_partner_company:'',
			flight:'',
			guide_room:'',
			guide_room_by:'',
			guests_room:'',
			guests_room_by:'',
			breakfast:'',
			lunch:'',
			dinner:'',
			tripid:tripid,
			guide_id:'',
			guide_name:''
			
	};
	$scope.partners=partnerCompany;
	
	$scope.updateGuideName = function(){
		for(var i =0; i<guides.length ;i++){
			if($scope.tripstep.guide_id==$scope.guides[i].id){
				$scope.tripstep.guide_name = $scope.guides[i].name_chn;
			}
		}
	};
	
	$scope.add = function() {
		if($scope.tripstep.date!=''){
			
			$uibModalInstance.close($scope.tripstep);
			
			//alert(JSON.stringify($scope.vehicle));
		}else{
			alert("请输入数据");
		}
		
	};
	$scope.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
}]);

App.controller('EditTripSteps',["$scope",  "$uibModalInstance" ,"childid","$http", 
                                'hotel', 'flight','vehicle','tripid','guides','tripsteps',
                               function ($scope, $uibModalInstance, childid, $http,
                            		   hotel,flight,vehicle,tripid,guides,tripsteps) {
	$scope.tripsteps = tripsteps;
	$scope.vehicles =vehicle;
	
	$scope.hotels =hotel;
	$scope.guides =guides;
	
	for(var i=0;i<$scope.tripsteps .length;i++){
		if($scope.tripsteps [i].id==childid){
			$scope.tripstep = $scope.tripsteps [i];
			$scope.tripsteps.splice(i,1);
		}
	}
	$scope.updateGuideName = function(){
		for(var i =0; i<guides.length ;i++){
			if($scope.tripstep.guide_id==$scope.guides[i].id){
				$scope.tripstep.guide_name = $scope.guides[i].name_chn;
			}
		}
	};
	
	$scope.edit = function(){
		//alert(JSON.stringify($scope.tripsteps));
		if($scope.tripstep.date!=''){
			
			$scope.tripsteps.push($scope.tripstep);
			$uibModalInstance.close($scope.tripsteps);
			
			//alert(JSON.stringify($scope.vehicle));
		}else{
			alert("请输入数据");
		}
	};
	$scope.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
	
}]);
