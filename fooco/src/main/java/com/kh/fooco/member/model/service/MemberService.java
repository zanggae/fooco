package com.kh.fooco.member.model.service;

import java.util.ArrayList;

import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.member.model.vo.Checkin;
import com.kh.fooco.member.model.vo.Follower;
import com.kh.fooco.member.model.vo.Following;
import com.kh.fooco.member.model.vo.Member;

import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.theme.model.vo.ThemeAdmin;
import com.kh.fooco.member.model.vo.Mylist;

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
	
	// ================================== Mylist 영은 ===========================================


	ArrayList<Mylist> searchListRes(String searchRes);

	Mylist selectmylist(int mlId1);

	int insertMylist(String themeTitle, int themeWriter);

	int insertMylistRes(String th);
	

}
