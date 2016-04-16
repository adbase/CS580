/**
 * Danqing Zhao
 */

var App = angular.module("myApp", ['ui.router','ui.bootstrap','ngHandsontable']);

App.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider){
	
	
	$stateProvider
	.state("listTrip", {
		url : "/listTrip",
		templateUrl : "listTrip",
		controller : "TripController",
		resolve: {
				async: ['TripService', function(TripService){
					return TripService.fetchProcessingList();
				}]
				
		}
	})
	.state("addTrip", {
		
		url : "/addTrip",
		templateUrl : "addTrip",
		controller : "addTripController",
		resolve: {
			guides :['GuideService',function(GuideService){
				return GuideService.searchAllGuides();
			}],
			localPartner :['ParnterCompanyService', function(ParnterCompanyService){
				return ParnterCompanyService.searchAllCompanyByType('local');
			}]
	
	
		}
	})
	.state("vehicleCompany", {
		
		url : "/vehicleCompany",
		templateUrl : "vehicleCompany",
		controller : "partnerCompanyController",
		resolve: {
				async: ['ParnterCompanyService', function(ParnterCompanyService){
		     
					return ParnterCompanyService.searchAllCompanyByType("vehicle");
			
				}],
				type : function(){
					return "vehicle";
				}
		}
	})
	.state("hotelCompany", {
		
		url : "/hotelCompany",
		templateUrl : "hotelCompany",
		controller : "partnerCompanyController",
		resolve: {
				async: ['ParnterCompanyService', function(ParnterCompanyService){
		     
					return ParnterCompanyService.searchAllCompanyByType("hotel");
			
				}],
				type : function(){
					return "hotel";
				}
		}
	})
	.state("localCompany", {
		
		url : "/localCompany",
		templateUrl : "localCompany",
		controller : "partnerCompanyController",
		resolve: {
				async: ['ParnterCompanyService', function(ParnterCompanyService){
		     
					return ParnterCompanyService.searchAllCompanyByType("local");
			
				}],
				type : function(){
					return "local";
				}
		}
	})
	.state("flightCompany", {
		
		url : "/flightCompany",
		templateUrl : "flightCompany",
		controller : "partnerCompanyController",
		resolve: {
				async: ['ParnterCompanyService', function(ParnterCompanyService){
		     
			return ParnterCompanyService.searchAllCompanyByType("flight");
			
				}],
				type : function(){
					return "flight";
				}
		}
	})
	.state("vehicleManagement", {
		
		url : "/vehicleManagement",
		templateUrl : "vehicleManagement",
		controller : "vehcileController",
		resolve: {
			async: ['VechileService', function(VechileService){
	     
				return VechileService.searchAllVechile();
		
			}],
			 partnerCompany: ['ParnterCompanyService',function(ParnterCompanyService){
				 
				 return ParnterCompanyService.searchAllCompanyByType('vehicle');
			 }]
		}
		
	})
	.state("guideManagement", {
		
		url : "/guideManagement",
		templateUrl : "guideManagement",
		controller : "guideController",
		resolve: {
			async: ['GuideService', function(GuideService){
	     
				return GuideService.searchAllGuides();
		
			}],
			 partnerCompany: ['ParnterCompanyService',function(ParnterCompanyService){
				 
				 return ParnterCompanyService.searchAllCompanyByType('local');
			 }]
		}
		
	})
	
	
}]);
	
	
