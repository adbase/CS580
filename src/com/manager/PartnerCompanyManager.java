package com.manager;

import java.util.List;

import com.entity.PartnerCompany;

public interface PartnerCompanyManager {

	 public List<PartnerCompany> searchAllCompany(String types);
	 
	 public void addNewCompany(PartnerCompany P);
	 
	 public void updateCompany(PartnerCompany P);
	 
	 public void deleteCompany(PartnerCompany P);
	 
	 public PartnerCompany findById(String id);
	 
}
