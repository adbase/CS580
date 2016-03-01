package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.dao.OrganizationDao;
import com.entity.Organization;
import com.entity.User;

public class OrganizationDaoImpl implements OrganizationDao {
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

	@Override
	public List<Organization> findAllOrganizations() {
		// TODO Auto-generated method stub
		String hql = "FROM Partnercompany P WHERE  P.type = 'vehicle' ";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return query.list();
	}
}
