package com.kh.fooco.membership.model.service;

import java.util.ArrayList;

import com.kh.fooco.membership.model.vo.Coupon;
import com.kh.fooco.membership.model.vo.MemberShip;

public interface MemberShipService {

	ArrayList<MemberShip> selectMembershipList(MemberShip membership);

	int insertGoldMembership(MemberShip membership);

	ArrayList<Coupon> selectCouponList();

	int insertCoupon1(MemberShip membership);

	int insertCoupon2(MemberShip membership);

	int insertSilverMembership(MemberShip membership);

	int insertCoupon3(MemberShip membership);

	ArrayList<MemberShip> selectforMembership(String memberId);

	MemberShip checkmembership(int MembershipUser);

	int updateMembershipStatus();

	int updateStaticGoldCount();

	int updateStaticSilverCount();





}
