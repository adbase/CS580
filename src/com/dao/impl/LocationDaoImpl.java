<<<<<<< HEAD
package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.dao.LocationDao;
import com.entity.Location;

public class LocationDaoImpl implements LocationDao{
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void addLocation(Location loc) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(loc);	
	}

	@Override
	public List<Location> queryAll() {
		// TODO Auto-generated method stub
		String hql = "FROM Location";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Location queryByName(String cityName) {
		// TODO Auto-generated method stub
		String hql = "FROM Location L WHERE L.CityName=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, cityName);
		return (Location)query.list().get(0);
	}

	@Override
	public List<Location> queryByState(String stateName) {
		// TODO Auto-generateString hql = "FROM Location L WHERE L.CityName=?";
		String hql = "FROM Location L WHERE L.CityName=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, stateName);
		return query.list();
	}

	@Override
	public void update(Location loc) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(loc);
	}

	@Override
	public void delete(Location loc) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(loc);
	}

}
=======
package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.dao.LocationDao;
import com.entity.Location;

public class LocationDaoImpl implements LocationDao{
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void addLocation(Location loc) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(loc);	
	}

	@Override
	public List<Location> queryAll() {
		// TODO Auto-generated method stub
		String hql = "FROM Location";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Location queryByName(String cityName) {
		// TODO Auto-generated method stub
		String hql = "FROM Location L WHERE L.CityName=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, cityName);
		return (Location)query.list().get(0);
	}

	@Override
	public List<Location> queryByState(String stateName) {
		// TODO Auto-generateString hql = "FROM Location L WHERE L.CityName=?";
		String hql = "FROM Location L WHERE L.CityName=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, stateName);
		return query.list();
	}

	@Override
	public void update(Location loc) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(loc);
	}

	@Override
	public void delete(Location loc) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(loc);
	}

}
>>>>>>> origin/master
