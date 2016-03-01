package com.dao;

import java.util.List;

import com.entity.Trip;

public interface TripDao {
	public void addTrip(Trip trip);
	
	public List<Trip> searchAllTrips();
}
