package com.kh.fooco.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.admin.model.dao.AdminDao;
import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public VisitorCount selectOneVisitorCount() {
		return adminDao.selectOneVisitorCount();
	}

	@Override
	public MembershipStatus selectOneMembershipStatus() {
		return adminDao.selectOneMembershipStatus();
	}

	@Override
	public MembershipCount selectOneMembershipCount() {
		return adminDao.selectOneMembershipCount();
	}

	@Override
	public int insertVisitorCount() {
		return adminDao.insertVisitorCount();
	}

}
