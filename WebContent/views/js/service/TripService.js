/**
 * 
 */
App.factory('TripService', ['$http', '$q', function($http, $q){
	return{
		fetchProcessingList: function() {
			return $http.get('/TMS/searchAllTrips')
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
			return $http.get('/TMS/getInitDate')
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
			return $http.post('/TMS/createTrip',trip)
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
			return $http.post('/TMS/createTripstep',tripstep)
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