package com.manager;

import java.util.List;

import com.entity.Trip;
import com.entity.User;

public interface TripManager {

	 public void addTrip(Trip trip);  
	 
	 public List<Trip> searchAllTrips();
}
