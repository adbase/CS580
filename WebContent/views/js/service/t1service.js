/**
 * 
 */

App.factory('t1service', ['$http', '$q', function($http, $q){
   return{
	   seachAllUser: function(){
		   return $http.get('/CS580/userSearch')
		   .then(
			   function(response){	
                   return response.data;
               }, 
               function(errResponse){
                   console.error('Error while fetching Processings');
                   return $q.reject(errResponse);
               }
		   );
	   }
	   
   }
}]);