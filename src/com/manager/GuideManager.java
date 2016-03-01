package com.manager;

import java.util.List;

import com.entity.Guide;


public interface GuideManager {
	public List<Guide> searchAll();
	 
	 public void add(Guide P);
	 
	 public void update(Guide P);
	 
	 public void delete(Guide P);
	 
	 public Guide findById(String id);
}
