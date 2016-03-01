package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.dao.VehicleDao;
import com.entity.PartnerCompany;
import com.entity.Vehicle;

public class VehicleDaoImpl implements VehicleDao{
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Vehicle> searchAll() {
		// TODO Auto-generated method stub
		String hql = "FROM Vehicle";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();

	}

	@Override
	public void add(Vehicle P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(P);
	}

	@Override
	public void update(Vehicle P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(P);
	}

	@Override
	public void delete(Vehicle P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(P);
	}

	@Override
	public Vehicle findById(String id) {
		// TODO Auto-generated method stub
		String hql = "FROM Vehicle P WHERE P.id = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		List temp = query.list();
		
		return (Vehicle)temp.get(0);
	}

}
