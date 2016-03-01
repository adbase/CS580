/**
 * 
 */
'use strict';

App.controller('CreateProcessingController', [
		'$scope',
		'ProcessService',
		function($scope, ProcessService) {

			var self = this;
			self.trip = {
				id : '',
				contact : '',
				phone : '',
				email : '',
				name : '',
				num_people : '',
				overtime_payment : '',
				start_date : '',
				overtime_rate : '',
				end_date : '',
				disable_account : '',
				Organization_id : ''
			};
			
			self.tripstep ={
					id:'',
					date: '',
					triplocation:'',
					type : '',
					vehiclelocation:'',
					vehicletype:'',
					userpartenercompany:'',
					flight:'',
					guideroom:'',
					guideroomby:'',
					guestsroom:'',
					guestsroomby:'',
					breakfast:'',
					lunch:'',
					dinner:'',
					Guideid:'',
					Vehicleid:'',
					PartnerCompanyid:'',
					Tripid:''	
			};
			
			self.tripsteps = [];
			
			
			self.addTripStep(tripstep){
				rocessService.createTripstep(tripstep)
			}
			self.createTrip = function(trip) {
				ProcessService.createTrip(trip)
				.then(
						self.fetchProcessingList,
						function(errResponse) {
							console.error('Error while creating User.');
						});
			};
			self.fetchProcessingList = function() {
				ProcessService.fetchProcessingList()
				.then(
						function(d) {
							self.trip = d;
						}, 
						function(errResponse) {
							console.error('Error while fetching Currencies');
						}
				);
			};
			self.fetchProcessingList();
			self.submit = function() {
	              if(self.trip.id===null){
	                  console.log('Saving New User', self.trip);    
	                  self.createTrip(self.trip);
	              }
	              self.reset();
	        };
	        self.reset = function(){
	        	self.trip = {
	    				id : null,
	    				contact : '',
	    				phone : '',
	    				email : '',
	    				name : '',
	    				num_people : '',
	    				overtime_payment : '',
	    				start_date : '',
	    				overtime_rate : '',
	    				end_date : '',
	    				disable_account : '',
	    				Organization_id : null
	    		};
	           $scope.TravllingForm.$setPristine(); //reset Form
	        };
		} 
]);