package com.dao;

import java.util.List;

import com.entity.Guide;

public interface GuideDao {
	public List<Guide> searchAll();
	 
	 public void add(Guide P);
	 
	 public void update(Guide P);
	 
	 public void delete(Guide P);
	 
	 public Guide findById(String id);
}
