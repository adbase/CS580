package com.dao;

import java.util.List;

import com.entity.Location;

public interface LocationDao {

	public void addLocation(Location loc);
	
	public List<Location> queryAll();
	
	public Location queryByName(String cityName);
	
	public List<Location> queryByState(String state);
	
	public void update(Location loc);
	
	public void delete(Location loc);
	
	
}
