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
import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.theme.model.vo.ThemeAdmin;

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

	@Override
	public int insertRestaurantMenu(String me) {
		return adminDao.insertRestaurantMenu(me);
	}

	@Override
	public int insertRestaurantFilter(String fi) {
		return adminDao.insertRestaurantFilter(fi);
	}

	@Override
	public int insertRestaurant(Restaurant r) {
		return adminDao.insertRestaurant(r);
	}

	@Override
	public int insertRestaurantImage(Image i) {
		return adminDao.insertRestaurantImage(i);
	}

	@Override
	public Restaurant selectOneRestaurant(Restaurant restaurant) {
		return adminDao.selectOneRestaurant(restaurant);
	}

	@Override
	public ArrayList<String> selectListRestaurantFilter(Restaurant restaurant) {
		return adminDao.selectListRestaurantFilter(restaurant);
	}

	@Override
	public ArrayList<String> selectListRestaurantMenu(Restaurant restaurant) {
		return adminDao.selectListRestaurantMenu(restaurant);
	}

	@Override
	public int deleteRestaurantMenu(Restaurant r) {
		return adminDao.deleteRestaurantMenu(r);
	}

	@Override
	public int deleteRestaurantFilter(Restaurant r) {
		return adminDao.deleteRestaurantFilter(r);
	}

	@Override
	public int updateRestaurantMenu(String me, int rId) {
		return adminDao.updateRestaurantMenu(me, rId);
	}

	@Override
	public int updateRestaurantFilter(String fi, int rId) {
		return adminDao.updateRestaurantFilter(fi, rId);
	}

	@Override
	public int updateRestaurantImage(Image i, int rId) {
		return adminDao.updateRestaurantImage(i, rId);
	}

	@Override
	public int updateRestaurant(Restaurant r) {
		return adminDao.updateRestaurant(r);
	}

	@Override
	public int selectOneThemeCount(ThemeAdmin ta) {
		return adminDao.selectOneThemeCount(ta);
	}

	@Override
	public ArrayList<ThemeAdmin> selectListTheme(ThemeAdmin ta, PageInfo pi) {
		return adminDao.selectListTheme(ta, pi);
	}

	@Override
	public int deleteTheme(ThemeAdmin ta) {
		return adminDao.deleteTheme(ta);
	}

	@Override
	public int deleteThemeBM(ThemeAdmin ta) {
		return adminDao.deleteThemeBM(ta);
	}

	@Override
	public int deleteThemeR(ThemeAdmin ta) {
		return adminDao.deleteThemeR(ta);
	}

	

}
