package com.manager.impl;

import java.util.List;

import com.dao.OrganizationDao;
import com.entity.Organization;
import com.manager.OrganizationManager;

public class OrganizationManagerImpl implements OrganizationManager{
	private OrganizationDao organizationDao;
	public OrganizationDao getOrganizationDao() {
		return organizationDao;
	}
	public void setOrganizationDao(OrganizationDao organizationDao) {
		this.organizationDao = organizationDao;
	}
	@Override
	public List<Organization> findOrganization() {
		// TODO Auto-generated method stub
		
		return organizationDao.findAllOrganizations();
	}

}
