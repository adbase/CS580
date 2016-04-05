/**
 * 
 */
App.factory('ParnterCompanyService', ['$http', '$q', function($http, $q){

	return {
		
		searchAllCompanyByType : function(type){
			 return $http.get('/TMS/searchAllCompany/'+type)
			   .then(
				   function(response){	
	                   return response.data;
	               }, 
	               function(errResponse){
	                   console.error('Error while fetching search vehicle companies');
	                   return $q.reject(errResponse);
	               }
			   );
		},
		createID: function(){
			return $http.get('/TMS/createNewPartnerCompanyID')
			 .then(
					   function(response){
						   return response.data;
		               }, 
		               function(errResponse){
		                   console.error('Error while creating id');
		                   return $q.reject(errResponse);
		               }
				   );
		}
	}
}]);