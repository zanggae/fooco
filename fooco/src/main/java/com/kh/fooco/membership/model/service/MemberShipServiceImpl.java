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

	//결제 후 골드멤버십 insert 메소드
	@Override
	public int insertGoldMembership(MemberShip membership) {
		
		return memberShipDao.insertGoldMembership(membership);
	}
	//결제 후 실버 멤버십 insert 메소드
	@Override
	public int insertSilverMembership(MemberShip membership) {
		
		return memberShipDao.insertSilverMembership(membership);
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
	@Override
	public int insertCoupon3(MemberShip membership) {
		
		return memberShipDao.insertCoupon3(membership);
	}
	//해당 회원 멤버십 조회
	@Override
	public ArrayList<MemberShip> selectforMembership(String memberId) {
		
		return memberShipDao.selectforMembership(memberId);
	}

}
