package com.manager.impl;

import java.util.List;

import com.dao.TripstepDao;
import com.entity.Tripstep;
import com.manager.TripstepManager;

public class TripstepManagerImpl implements TripstepManager{

	private TripstepDao tripstepDao;
	
	
	public TripstepDao getTripstepDao() {
		return tripstepDao;
	}

	public void setTripstepDao(TripstepDao tripstepDao) {
		this.tripstepDao = tripstepDao;
	}

	@Override
	public List<Tripstep> searchAll() {
		// TODO Auto-generated method stub
		return tripstepDao.searchAll();
	}

	@Override
	public void add(Tripstep P) {
		// TODO Auto-generated method stub
		tripstepDao.add(P);
	}

	@Override
	public void update(Tripstep P) {
		// TODO Auto-generated method stub
		tripstepDao.update(P);
	}

	@Override
	public void delete(Tripstep P) {
		// TODO Auto-generated method stub
		tripstepDao.delete(P);
	}

	@Override
	public Tripstep findById(String id) {
		// TODO Auto-generated method stub
		return tripstepDao.findById(id);
	}

}
