package com.kh.fooco.membership.model.service;

import java.util.ArrayList;

import com.kh.fooco.membership.model.vo.MemberShip;

public interface MemberShipService {

	ArrayList<MemberShip> selectMembershipList(MemberShip membership);

	int insertMembership(MemberShip membership);

}
