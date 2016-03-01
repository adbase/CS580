/**
 * 
 */
App.factory('GuideService', ['$http', '$q', function($http, $q){
	return {
		searchAllGuides : function(){
			return $http.get('/CS580/searchAllGuides')
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