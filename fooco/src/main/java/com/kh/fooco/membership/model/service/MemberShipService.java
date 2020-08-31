package com.kh.fooco.membership.model.service;

import java.util.ArrayList;

import com.kh.fooco.membership.model.vo.Coupon;
import com.kh.fooco.membership.model.vo.MemberShip;

public interface MemberShipService {

	ArrayList<MemberShip> selectMembershipList(MemberShip membership);

	int insertMembership(MemberShip membership);

	ArrayList<Coupon> selectCouponList();

	int insertCoupon1(MemberShip membership);

	int insertCoupon2(MemberShip membership);

}
