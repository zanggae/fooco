package com.kh.fooco.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.admin.model.dao.AdminDao;
import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.Search;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.vo.Restaurant;

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
	public int insertVisitorCount1() {
		return adminDao.insertVisitorCount1();
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

	@Override
	public ArrayList<Board> selectListInquiry(PageInfo pi, Board board) {
		return adminDao.selectListInquiry(pi, board);
	}

	@Override
	public Board selectInquiryOne(Board board) {
		return adminDao.selectInquiryOne(board);
	}

	@Override
	public int updateReplyInquiry(Board board) {
		return adminDao.updateReplyInquiry(board);
	}

	@Override
	public int selectInquiryCount(Board board) {
		return adminDao.selectInquiryCount(board);
	}

	@Override
	public ArrayList<Board> selectBoardList(Board board, PageInfo pi) {
		return adminDao.selectBoardList(board,pi);
	}

	@Override
	public int selectBoardCount(Board board) {
		return adminDao.selectBoardCount(board);
	}

	@Override
	public int deleteBoardAdmin(Board board) {
		return adminDao.deleteBoardAdmin(board);
	}

	@Override
	public int registrationBoard(Board board) {
		return adminDao.registrationBoard(board);
	}

	@Override
	public int modifyBoardAdmin(Board board) {
		return adminDao.modifyBoardAdmin(board);
	}

	@Override
	public int modifyBoardAdmin2(Board board) {
		return adminDao.modifyBoardAdmin2(board);
	}

	@Override
	public String selectvisitorMaxCount() {
		return adminDao.selectvisitorMaxCount();
	}

	@Override
	public ArrayList<Restaurant> selectListRestaurantAdmin(Search search, PageInfo pi) {
		return adminDao.selectListRestaurantAdmin(search, pi);
	}

	@Override
	public int selectOneRestaurantCount(Search search) {
		return adminDao.selectOneRestaurantCount(search);
	}

	@Override
	public int deleteRestaurant(Restaurant r) {
		return adminDao.deleteRestaurant(r);
	}

	

}
