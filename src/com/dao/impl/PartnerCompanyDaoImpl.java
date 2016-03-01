package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.web.bind.annotation.RequestBody;

import com.dao.PartnerCompanyDao;
import com.entity.PartnerCompany;

public class PartnerCompanyDaoImpl implements PartnerCompanyDao{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<PartnerCompany> searchAllCompany(String type) {
		String hql = "FROM PartnerCompany P WHERE P.type = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, type);
		return query.list();
	}
	@Override
	public void add(PartnerCompany P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(P);
	}
	@Override
	public void update( PartnerCompany P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(P);
	}
	@Override
	public void delete( PartnerCompany P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(P);
	}
	@Override
	public PartnerCompany findById(String id) {
		// TODO Auto-generated method stub
		String hql = "FROM PartnerCompany P WHERE P.id = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		List temp = query.list();
		
		return (PartnerCompany)temp.get(0);
	}

}
