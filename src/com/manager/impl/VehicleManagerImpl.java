package com.manager.impl;

import java.util.List;

import com.dao.VehicleDao;
import com.entity.Vehicle;
import com.manager.VehicleManager;

public class VehicleManagerImpl implements VehicleManager{
	private VehicleDao vehicleDao;
	
	

	public VehicleDao getVehicleDao() {
		return vehicleDao;
	}

	public void setVehicleDao(VehicleDao vehicleDao) {
		this.vehicleDao = vehicleDao;
	}

	@Override
	public List<Vehicle> searchAll() {
		// TODO Auto-generated method stub
		return vehicleDao.searchAll();
	}

	@Override
	public void add(Vehicle P) {
		// TODO Auto-generated method stub
		vehicleDao.add(P);
	}

	@Override
	public void update(Vehicle P) {
		// TODO Auto-generated method stub
		vehicleDao.update(P);
	}

	@Override
	public void delete(Vehicle P) {
		// TODO Auto-generated method stub
		vehicleDao.delete(P);
	}

	@Override
	public Vehicle findById(String id) {
		// TODO Auto-generated method stub
		return vehicleDao.findById(id);
	}

}
