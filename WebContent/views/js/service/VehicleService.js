/**
 * 
 */
App.factory('VechileService', ['$http', '$q', function($http, $q){
	return {
		searchAllVechile : function(){
			return $http.get('/CS580/searchAllVechile')
			   .then(
				   function(response){	
	                   return response.data;
	               }, 
	               function(errResponse){
	                   console.error('Error while fetching search vehicle companies');
	                   return $q.reject(errResponse);
	               }
			   );
		}
	}
}]);