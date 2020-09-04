package com.kh.fooco.admin.model.service;

import java.util.ArrayList;

import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.Search;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.vo.Restaurant;

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

	ArrayList<Board> selectListInquiry(PageInfo pi, Board board);

	Board selectInquiryOne(Board board);

	int updateReplyInquiry(Board board);

	int selectInquiryCount(Board board);

	ArrayList<Board> selectBoardList(Board board, PageInfo pi);

	int selectBoardCount(Board board);

	int deleteBoardAdmin(Board board);

	int registrationBoard(Board board);

	int modifyBoardAdmin(Board board);

	int modifyBoardAdmin2(Board board);

	String selectvisitorMaxCount();

	ArrayList<Restaurant> selectListRestaurantAdmin(Search search, PageInfo pi);

	int selectOneRestaurantCount(Search search);

	int deleteRestaurant(Restaurant r);

	int insertVisitorCount1();

	int insertRestaurantMenu(String me);

	int insertRestaurantFilter(String fi);

	int insertRestaurant(Restaurant r);

	int insertRestaurantImage(Image i);

	Restaurant selectOneRestaurant(Restaurant restaurant);

	ArrayList<String> selectListRestaurantFilter(Restaurant restaurant);

	ArrayList<String> selectListRestaurantMenu(Restaurant restaurant);

	int deleteRestaurantMenu(Restaurant r);

	int deleteRestaurantFilter(Restaurant r);

	int updateRestaurantMenu(String me, int rId);

	int updateRestaurantFilter(String fi, int rId);

	int updateRestaurantImage(Image i, int rId);

	int updateRestaurant(Restaurant r);

	
}
