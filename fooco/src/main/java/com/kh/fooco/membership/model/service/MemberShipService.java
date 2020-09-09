package com.kh.fooco.membership.model.service;

import java.util.ArrayList;

import com.kh.fooco.membership.model.vo.Coupon;
import com.kh.fooco.membership.model.vo.MemberShip;

public interface MemberShipService {

	ArrayList<MemberShip> selectMembershipList(MemberShip membership);

	int insertGoldMembership(MemberShip membership);

	ArrayList<Coupon> selectCouponList();

	int insertSilverMembership(MemberShip membership);

	ArrayList<MemberShip> selectforMembership(String memberId);

	MemberShip checkmembership(int MembershipUser);

	int updateMembershipStatus();

	int updateStaticGoldCount();

	int updateStaticSilverCount();





}
