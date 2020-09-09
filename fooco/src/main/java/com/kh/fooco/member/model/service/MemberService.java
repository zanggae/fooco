package com.kh.fooco.member.model.service;

import java.util.ArrayList;

import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.member.model.vo.BoardInfo;
import com.kh.fooco.member.model.vo.Checkin;
import com.kh.fooco.member.model.vo.CheckinImage;
import com.kh.fooco.member.model.vo.Follower;
import com.kh.fooco.member.model.vo.Following;
import com.kh.fooco.member.model.vo.MZ;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.vo.Info;
import com.kh.fooco.restaurant.model.vo.Res;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.theme.model.vo.ThemeAdmin;
import com.kh.fooco.member.model.vo.Mylist;

import com.kh.fooco.member.model.vo.MylistAdmin;

import com.kh.fooco.member.model.vo.Select_Board;

import com.kh.fooco.member.model.vo.Select_Checkin;
import com.kh.fooco.member.model.vo.Select_Coupon;
import com.kh.fooco.membership.model.vo.MemberShip;

public interface MemberService {

	Member loginMember(Member m);

	int insertMember(Member m);

	int checkNickName(String nickName);

	int searchMemberPwd(Member m);

	String searchPwdMember(Member m);

	int chekchemailDup(String email);


	// ================================== MyPage 동원 ===========================================

	int selectOneFollowCount(Member m);

	int selectOneFollowingCount(Member m);

	String selectOneProFile(Member m);

	int updateMemberProfile(Member m);

	ArrayList<Follower> selectFollower(Member m);

	ArrayList<Following> selectFollowing(Member m);

	int checkNickNameDup(String nickName);

	int updateMemberInfo(Member m);

	int updateMemberWithdrawal(Member m);

	int selectOneReviewCount(Member m);

	int selectOneMyListCount(Member m);

	int selectOneCheckInCount(Member m);

	ArrayList<Restaurant> selectListRestaurant(String restitle);
	
	int insertCheckin(Checkin ck);
	
	int insertImage(Image img);
	
	int insertCheckinImage(CheckinImage ckimg);
	
	ArrayList<Select_Checkin> selectCheckinList(int memberId);
	
	ArrayList<Select_Checkin> selectModifyCheckinList(int checkinId);
	
	int updateCheckin(Checkin ck);
	
	int deleteImage(String imageNum);
	
	int deleteCheckinImage(String imageNum);
	
	int insertCheckinImage2(CheckinImage ckimg);
	
	int deleteCheckin(int checkinId);
	
	int deleteCheckinImage2(int checkinId);
	
	ArrayList<MZ> selectMZ(int memberId);
	
	int deleteMZ(int resBookMarkId);
	
	Res getRestaurantDetail(int resId);

	Info getRestaurantInfo(int resId);

	ArrayList<Select_Board> selectInquiry(int memberId);

	BoardInfo selectBoardInfo(int boardId);
	
	int updateBoard(BoardInfo boardInfo);
	
	int updateInquiry(BoardInfo boardInfo);
	
	int updateBoardStatus(int boardId);
	
	ArrayList<Select_Coupon> selectCouponList(int memberId);
	
	int updatecStatus(int couponListId);
	
	
	// ================================== Mylist 영은 ===========================================


	ArrayList<Mylist> searchListRes(String searchRes);

	Mylist selectmylist(int mlId1);

	int insertMylist(String themeTitle, int themeWriter);

	int insertMylistRes(String th);

	ArrayList<MylistAdmin> selectmyPageMylist();










	


	/* ArrayList<Mylist> mylistList(); */







	









}
