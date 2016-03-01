package com.dao;

import java.util.List;

import com.entity.Organization;

public interface OrganizationDao {
	public List<Organization> findAllOrganizations();
}
