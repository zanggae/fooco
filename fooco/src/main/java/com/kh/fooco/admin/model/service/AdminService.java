package com.kh.fooco.admin.model.service;

import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;

public interface AdminService {

	VisitorCount selectOneVisitorCount();

	MembershipStatus selectOneMembershipStatus();

	MembershipCount selectOneMembershipCount();

	int insertVisitorCount();

	int updateVisitorCount();
}
