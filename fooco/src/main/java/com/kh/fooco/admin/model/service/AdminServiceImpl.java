package com.kh.fooco.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.admin.model.dao.AdminDao;
import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;

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

	@Override
	public int updateVisitorCount() {
		return adminDao.updateVisitorCount();
	}

	@Override
	public ArrayList<Member> selectlistMember(PageInfo pi) {
		return adminDao.selectlistMember(pi);
	}

	@Override
	public int memberNameCount(String searchMemberTextbox) {
		return adminDao.memberNameCount(searchMemberTextbox);
	}

	@Override
	public ArrayList<Member> searchlistMember(PageInfo pi, String searchMemberTextbox) {
		return adminDao.searchlistMember(pi, searchMemberTextbox);
	}

	@Override
	public int updateMembershipSuspension(String memberId) {
		return adminDao.updateMembershipSuspension(memberId);
	}

	@Override
	public Member selectOneMember(String memberId) {
		return adminDao.selectOneMember(memberId);
	}

	@Override
	public int updateMembershipSuspension2(String memberId) {
		return  adminDao.updateMembershipSuspension2(memberId);
	}

	@Override
	public int updateMemberReviewStatus(String memberId) {
		return  adminDao.updateMemberReviewStatus(memberId);
	}

	@Override
	public int updateMemberReviewStatus2(String memberId) {
		return  adminDao.updateMemberReviewStatus2(memberId);
	}

	@Override
	public ArrayList<Board> selectListInquiryD() {
		return adminDao.selectListInquiryD();
	}

}
