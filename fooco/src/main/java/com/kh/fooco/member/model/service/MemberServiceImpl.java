package com.kh.fooco.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.member.model.dao.MemberDao;
import com.kh.fooco.member.model.vo.Checkin;
import com.kh.fooco.member.model.vo.Follower;
import com.kh.fooco.member.model.vo.Following;
import com.kh.fooco.member.model.vo.Member;

import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.member.model.vo.Mylist;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao memberDao;

	//로그인메소드
	@Override
	public Member loginMember(Member m) {
		
		return memberDao.loginMember(m);
	}

	//회원가입메소드
	@Override
	public int insertMember(Member m) {
		
		return memberDao.insertMember(m);
	}

	//닉네임 중복 체크 메소드
	@Override
	public int checkNickName(String nickName) {
		
		return memberDao.checkNickName(nickName);
	}
	
	//비밀번호 찾기 메소드 - 현재 비밀번호 select해오기
	@Override
	public String searchPwdMember(Member m) {
		
		return memberDao.searchPwdMember(m);
	}
	//비밀번호 찾기 메소드
	@Override
	public int searchMemberPwd(Member m) {
		
		return memberDao.searchMemberPwd(m);
	}

	//이메일 중복체크 메소드 - 지민
	@Override
	public int chekchemailDup(String email) {
		
		return memberDao.chekchemailDup(email);
	}
	
	
	
	

	// ================================== MyPage 동원 ===========================================
	
	
	// 팔로우 페이지 팔로워 메소드
	@Override
	public ArrayList<Follower> selectFollower(Member m) {
		
		return memberDao.selectFollower(m);
	}

	// 팔로우 페이지 팔로잉 메소드
	@Override
	public ArrayList<Following> selectFollowing(Member m) {
		
		return memberDao.selectFollowing(m);
	}

	//개인정보 수정페이지 닉네임 중복 확인 메소드
	@Override
	public int checkNickNameDup(String nickName) {
		
		return memberDao.checkNickNameDup(nickName);
	}
	
	
	// 개인정보 수정 메소드
	@Override
	public int updateMemberInfo(Member m) {
		
		return memberDao.updateMemberInfo(m);
	}
	
	
	// 회원탈퇴 메소드
	@Override
	public int updateMemberWithdrawal(Member m) {
		
		return memberDao.updateMemberWithdrawal(m);
	}
	
	
	// 팔로워 수 카운트 메소드
	@Override
	public int selectOneFollowCount(Member m) {
		
		return memberDao.selectOneFollowCount(m);
	}

	// 팔로잉 수 카운트 메소드
	@Override
	public int selectOneFollowingCount(Member m) {
		
		return memberDao.selectOneFollowingCount(m);
	}
	
	// 프로필 사진 조회 메소드
	@Override
	public String selectOneProFile(Member m) {
		
		return memberDao.selectOneProFile(m);
	}

	// 프로필 사진 수정 메소드
	@Override
	public int updateMemberProfile(Member m) {
		
		return memberDao.updateMemberProfile(m);
	}
	
	// 나의활동 리뷰 수 메소드
	@Override
	public int selectOneReviewCount(Member m) {
		
		return memberDao.selectOneReviewCount(m);
	}

	// 나의활동 마이리스트 수 메소드
	@Override
	public int selectOneMyListCount(Member m) {
		
		return memberDao.selectOneMyListCount(m);
	}

	// 나의활동 체크인 수 메소드
	@Override
	public int selectOneCheckInCount(Member m) {
		
		return memberDao.selectOneCheckInCount(m);
	}
	
	// 체크인 등록 페이지에서 음식점 조회
	@Override
	public ArrayList<Restaurant> selectListRestaurant(String restitle) {
		
		return memberDao.selectListRestaurant(restitle);
	}
	
	// 체크인 등록 페이지에서 체크인 값 입력
	@Override
	public int insertCheckin(Checkin ck) {
		
		return memberDao.insertCheckin(ck);
	}

	
	// ================================== Mylist 영은==========================================

	//마이리스트 등록 검색 
	@Override
	public ArrayList<Mylist> searchListRes(String searchRes) {
		return memberDao.searchListRes(searchRes);
	}

	@Override
	public Mylist selectmylist(int mlId1) {
		return memberDao.selectmylist(mlId1);
	}



	
	
}
