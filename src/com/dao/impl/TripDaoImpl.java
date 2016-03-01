package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.dao.TripDao;
import com.entity.Trip;

public class TripDaoImpl implements TripDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addTrip(Trip trip) {
		// TODO Auto-generated method stub

		sessionFactory.getCurrentSession().save(trip);

	}

	@Override
	public List<Trip> searchAllTrips() {
		// TODO Auto-generated method stub
		String hql = "FROM Trip";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

}
