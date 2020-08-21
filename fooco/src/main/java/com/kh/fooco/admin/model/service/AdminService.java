package com.kh.fooco.admin.model.service;

import java.util.ArrayList;

import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;

public interface AdminService {

	VisitorCount selectOneVisitorCount();

	MembershipStatus selectOneMembershipStatus();

	MembershipCount selectOneMembershipCount();

	int insertVisitorCount();

	int updateVisitorCount();

	ArrayList<Member> selectlistMember(PageInfo pi);

	int memberNameCount(String searchMemberTextbox);

	ArrayList<Member> searchlistMember(PageInfo pi, String searchMemberTextbox);

	int updateMembershipSuspension(String memberId);

	Member selectOneMember(String memberId);

	int updateMembershipSuspension2(String memberId);

	int updateMemberReviewStatus(String memberId);

	int updateMemberReviewStatus2(String memberId);

	ArrayList<Board> selectListInquiryD();

	
}
