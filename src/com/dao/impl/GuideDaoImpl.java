package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.dao.GuideDao;
import com.entity.Guide;
import com.entity.Vehicle;

public class GuideDaoImpl implements GuideDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Guide> searchAll() {
		// TODO Auto-generated method stub
		String hql = "FROM Guide";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public void add(Guide P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(P);
	}

	@Override
	public void update(Guide P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(P);
	}

	@Override
	public void delete(Guide P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(P);
	}

	@Override
	public Guide findById(String id) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		String hql = "FROM Guide P WHERE P.id = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		List temp = query.list();

		return (Guide) temp.get(0);
	}

}
