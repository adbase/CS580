
App= angular.module("myApp", ['ui.router','ui.bootstrap','ngHandsontable' ]);

App.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider){
	
	
	$stateProvider
	.state("add", {
		url : "/add",
		templateUrl : "add",
		controller:"t1Controller"
			
	})
	.state("search", {
		url : "/search",
		templateUrl : "search",
		controller:"searcht1Controller",
		resolve: {
			data : ['t1service', function(t1service){
				return t1service.seachAllUser();
			}]
		}
	});
}]);