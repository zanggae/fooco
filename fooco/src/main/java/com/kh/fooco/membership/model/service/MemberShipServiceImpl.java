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

	//해당 회원 멤버십 조회
	@Override
	public ArrayList<MemberShip> selectforMembership(String memberId) {
		
		return memberShipDao.selectforMembership(memberId);
	}
	//멤버십 유무 체크
	@Override
	public MemberShip checkmembership(int MembershipUser) {
		
		return memberShipDao.checkmembership(MembershipUser);
	}
	//멤버십 상태 update
	@Override
	public int updateMembershipStatus() {
		
		return memberShipDao.updateMembershipStatus();
	}
	// 골드 맴버십 가입시 관리자 테이블에 goldCount update
	@Override
	public int updateStaticGoldCount() {
		return memberShipDao.updateStaticGoldCount();
	}
	// 실버 맴버십 가입시 관리자 테이블에 silverCount update
	@Override
	public int updateStaticSilverCount() {
		return memberShipDao.updateStaticSilverCount();
	}


}
