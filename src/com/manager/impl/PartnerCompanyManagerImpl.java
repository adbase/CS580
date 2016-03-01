package com.manager.impl;

import java.util.List;

import com.dao.OrganizationDao;
import com.dao.PartnerCompanyDao;
import com.entity.PartnerCompany;
import com.manager.PartnerCompanyManager;

public class PartnerCompanyManagerImpl implements PartnerCompanyManager {
	private PartnerCompanyDao partnerCompanyDao;

	

	public PartnerCompanyDao getPartnerCompanyDao() {
		return partnerCompanyDao;
	}



	public void setPartnerCompanyDao(PartnerCompanyDao partnerCompanyDao) {
		this.partnerCompanyDao = partnerCompanyDao;
	}



	@Override
	public List<PartnerCompany> searchAllCompany(String type) {
		return partnerCompanyDao.searchAllCompany(type);
		// TODO Auto-generated method stub

	}



	@Override
	public void addNewCompany(PartnerCompany p) {
		// TODO Auto-generated method stub
		 partnerCompanyDao.add(p);
	}



	@Override
	public void updateCompany(PartnerCompany P) {
		// TODO Auto-generated method stub
		partnerCompanyDao.update(P);
	}



	@Override
	public void deleteCompany(PartnerCompany P) {
		// TODO Auto-generated method stub
		partnerCompanyDao.delete(P);
	}



	@Override
	public PartnerCompany findById(String id) {
		// TODO Auto-generated method stub
		return partnerCompanyDao.findById(id);
	}

}
