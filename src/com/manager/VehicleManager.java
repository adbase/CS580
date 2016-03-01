package com.manager;

import java.util.List;

import com.entity.Vehicle;

public interface VehicleManager {
	public List<Vehicle> searchAll();
	 
	 public void add(Vehicle P);
	 
	 public void update(Vehicle P);
	 
	 public void delete(Vehicle P);
	 
	 public Vehicle findById(String id);

}
