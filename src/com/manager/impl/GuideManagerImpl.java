package com.manager.impl;

import java.util.List;

import com.dao.GuideDao;
import com.entity.Guide;
import com.manager.GuideManager;

public class GuideManagerImpl implements GuideManager{
	private GuideDao guideDao;
	

	public GuideDao getGuideDao() {
		return guideDao;
	}

	public void setGuideDao(GuideDao guideDao) {
		this.guideDao = guideDao;
	}

	@Override
	public List<Guide> searchAll() {
		// TODO Auto-generated method stub
		return guideDao.searchAll();
	}

	@Override
	public void add(Guide P) {
		// TODO Auto-generated method stub
		guideDao.add(P);
	}

	@Override
	public void update(Guide P) {
		// TODO Auto-generated method stub
		guideDao.update(P);
	}

	@Override
	public void delete(Guide P) {
		// TODO Auto-generated method stub
		guideDao.delete(P);
	}

	@Override
	public Guide findById(String id) {
		// TODO Auto-generated method stub
		return guideDao.findById(id);
	}

}
