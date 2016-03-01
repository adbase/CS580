package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.dao.TripstepDao;
import com.entity.Tripstep;

public class TripstepDaoImpl implements TripstepDao{
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Tripstep> searchAll() {
		// TODO Auto-generated method stub
		String hql = "FROM Tripstep";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public void add(Tripstep P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(P);
	}

	@Override
	public void update(Tripstep P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(P);
	}

	@Override
	public void delete(Tripstep P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(P);
	}

	@Override
	public Tripstep findById(String id) {
		// TODO Auto-generated method stub
		String hql = "FROM Tripstep P WHERE P.id = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		List temp = query.list();
		
		return (Tripstep)temp.get(0);
	}

}
