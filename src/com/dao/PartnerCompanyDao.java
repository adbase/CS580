package com.dao;

import java.util.List;

import com.entity.Organization;
import com.entity.PartnerCompany;

public interface PartnerCompanyDao {
	public List<PartnerCompany> searchAllCompany(String type);
	
	public void add(PartnerCompany P);
	
	public void update(PartnerCompany P);
	
	public void delete(PartnerCompany P);
	
	public PartnerCompany findById(String id);
}
