package com.dao;

import java.util.List;

import com.entity.Tripstep;

public interface TripstepDao {
	public List<Tripstep> searchAll();
	 
	 public void add(Tripstep P);
	 
	 public void update(Tripstep P);
	 
	 public void delete(Tripstep P);
	 
	 public Tripstep findById(String id);
}
