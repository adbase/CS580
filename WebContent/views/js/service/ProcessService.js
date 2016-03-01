/**
 * ProcessService.js 
 * Danqing Zhao
 */

'use strict';
App.factory('ProcessService', ['$http', '$q', function($http, $q){
	return{
		fetchProcessingList: function() {
			return $http.get('/CS580/processingsearch')
			.then(
					function(response){
						
                        return response.data;
                    }, 
                    function(errResponse){
                        console.error('Error while fetching Processings');
                        return $q.reject(errResponse);
                    }
				);
		},
		getInitDate: function(){
			return $http.get('/CS580/getInitDate')
			.then(
					function(response){
						
                        return response.data;
                    }, 
                    function(errResponse){
                        console.error('Error while adding Processings');
                        return $q.reject(errResponse);
                    }
			);
					
		},
		createTrip: function(trip){
			return $http.post('/CS580/createTrip',trip)
			.then(
					function(response){
						
                        return response.data;
                    }, 
                    function(errResponse){
                        console.error('Error while adding Processings');
                        return $q.reject(errResponse);
                    }
			);
		},
		createTripstep: function(tripstep){
			return $http.post('/CS580/createTripstep',tripstep)
			.then(
					function(response){
						
                        return response.data;
                    }, 
                    function(errResponse){
                        console.error('Error while adding Processings');
                        return $q.reject(errResponse);
                    }
			);
		}
	}
}]);