package com.kh.fooco.membership.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.membership.model.dao.MemberShipDao;
import com.kh.fooco.membership.model.vo.Coupon;
import com.kh.fooco.membership.model.vo.MemberShip;

@Service("memberShipService")
public class MemberShipServiceImpl implements MemberShipService{
	@Autowired
	private MemberShipDao memberShipDao;
	
	//멤버십 조회 메소드
	@Override
	public ArrayList<MemberShip> selectMembershipList(MemberShip membership) {
		
		return memberShipDao.selectMembershipList(membership);
	}
	//쿠폰 조회 메소드
	@Override
	public ArrayList<Coupon> selectCouponList() {
		
			return memberShipDao.selectCouponList();
	}

	//결제 후 멤버십 insert 메소드
	@Override
	public int insertMembership(MemberShip membership) {
		
		return memberShipDao.insertMembership(membership);
	}

	//결제 후 쿠폰1 insert 메소드
	@Override
	public int insertCoupon1(MemberShip membership) {
		
		return memberShipDao.insertCoupon1(membership);
	}
	@Override
	public int insertCoupon2(MemberShip membership) {
		
		return memberShipDao.insertCoupon2(membership);
	}

}
