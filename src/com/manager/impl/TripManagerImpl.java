package com.manager.impl;

import java.util.List;

import com.dao.TripDao;
import com.entity.Trip;
import com.manager.TripManager;

public class TripManagerImpl implements TripManager {
	private  TripDao tripDao;


	public TripDao getTripDao() {
		return tripDao;
	}


	public void setTripDao(TripDao tripDao) {
		this.tripDao = tripDao;
	}


	@Override
	public void addTrip(Trip trip) {
		// TODO Auto-generated method stub
		tripDao.addTrip(trip);
	}


	@Override
	public List<Trip> searchAllTrips() {
		// TODO Auto-generated method stub
		return tripDao.searchAllTrips();
	}

}
