package com.dao;

import org.hibernate.SessionFactory;

import com.entity.Location;

public class LocationImpl implements LocationDAO{
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addLocation(Location loc) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(loc);
	}

}
