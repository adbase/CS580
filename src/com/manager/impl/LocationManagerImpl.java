package com.manager.impl;

import java.util.List;

import com.dao.GuideDao;
import com.dao.LocationDao;
import com.entity.Location;
import com.manager.LocationManager;

public class LocationManagerImpl implements LocationManager{
	private LocationDao locationDao;
	
	public LocationDao getLocationDao() {
		return locationDao;
	}

	public void setLocationDao(LocationDao locationDao) {
		this.locationDao = locationDao;
	}

	@Override
	public void addLocation(Location loc) {
		// TODO Auto-generated method stub
		locationDao.addLocation(loc);
	}

	@Override
	public List<Location> queryAll() {
		// TODO Auto-generated method stub
		return locationDao.queryAll();
	}

	@Override
	public Location queryByName(String cityName) {
		// TODO Auto-generated method stub
		return locationDao.queryByName(cityName);
	}

	@Override
	public List<Location> queryByState(String state) {
		// TODO Auto-generated method stub
		return locationDao.queryByState(state);
	}

	@Override
	public void update(Location loc) {
		// TODO Auto-generated method stub
		locationDao.update(loc);
	}

	@Override
	public void delete(Location loc) {
		// TODO Auto-generated method stub
		locationDao.delete(loc);
	}

}
