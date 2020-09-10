package com.kh.fooco.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.admin.model.vo.MyListAdmin;
import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.member.model.dao.MemberDao;
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


import com.kh.fooco.member.model.vo.Select_Board;

import com.kh.fooco.member.model.vo.Select_Checkin;

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
	
	// 체크인 등록 페이지에서 체크인 테이블 입력 작업
	@Override
	public int insertCheckin(Checkin ck) {
		
		return memberDao.insertCheckin(ck);
	}
	
	// 체크인 등록 페이지에서 이미지 테이블 입력 작업
	@Override
	public int insertImage(Image img) {
	
		return memberDao.insertImage(img);
	}
	
	// 체크인 등록 페이지에서 체크인이미지 테이블 입력 작업
	@Override
	public int insertCheckinImage(CheckinImage ckimg) {

		return memberDao.insertCheckinImage(ckimg);
	}
	
	// 체크인 리스트 조회 메소드
	@Override
	public ArrayList<Select_Checkin> selectCheckinList(int memberId) {
	
		return memberDao.selectCheckinList(memberId);
	}
	
	// 체크인 수정페이지에서 조회되는 체크인 리스트
	@Override
	public ArrayList<Select_Checkin> selectModifyCheckinList(int checkinId) {
		
		return memberDao.selectModifyCheckinList(checkinId);
	}
	
	// 체크인 수정 페이지에서 체크인 테이블 수정 작업
	@Override
	public int updateCheckin(Checkin ck) {
		
		return memberDao.updateCheckin(ck);
	}
	
	// 체크인 수정 시 이미지 테이블에서 해당 이미지 삭제
	@Override
	public int deleteImage(String imageNum) {
		
		return memberDao.deleteImage(imageNum);
	}
	
	// 체크인 수정 시 체크인 이미지 테이블에서 해당 이미지 관련 행 삭제
	@Override
	public int deleteCheckinImage(String imageNum) {
		
		return memberDao.deleteCheckinImage(imageNum);
	}
	
	// 체크인 수정 시 체크인 이미지 테이블 입력 작업
	@Override
	public int insertCheckinImage2(CheckinImage ckimg) {
		
		return memberDao.insertCheckinImage2(ckimg);
	}
	
	// 체크인 테이블 삭제 작업
	@Override
	public int deleteCheckin(int checkinId) {
		
		return memberDao.deleteCheckin(checkinId);
	}
	
	// 체크인 리스트 페이지에서 체크인 이미지 테이블 삭제 작업
	@Override
	public int deleteCheckinImage2(int checkinId) {
		
		return memberDao.deleteCheckinImage2(checkinId);
	}
	
	// 즐겨찾기 - 맛집 조회 메소드
	@Override
	public ArrayList<MZ> selectMZ(int memberId) {
		
		return memberDao.selectMZ(memberId);
	}
	
	// 즐겨찾기 - 맛집 삭제 메소드
	@Override
	public int deleteMZ(int resBookMarkId) {
		
		return memberDao.deleteMZ(resBookMarkId);
	}
	
	// 맛집 상세페이지
	@Override
	public Res getRestaurantDetail(int resId) {
	
		return memberDao.getRestaurantDetail(resId);
	}
	
	// 해당 맛집 상세페이지 정보
	@Override
	public Info getRestaurantInfo(int resId) {
		
		return memberDao.getRestaurantInfo(resId);
	}
	
	// 1대1문의 리스트 조회 메소드
	@Override
	public ArrayList<Select_Board> selectInquiry(int memberId) {
	
		return memberDao.selectInquiry(memberId);
	}
	
	// 1대1문의 수정페이지 이동 시 해당 정보 조회 메소드
	@Override
	public BoardInfo selectBoardInfo(int boardId) {
		
		return memberDao.selectBoardInfo(boardId);
	}
	
	// 1대1문의 수정 버튼 클릭 시 board테이블 수정 작업
	@Override
	public int updateBoard(BoardInfo boardInfo) {
		
		return memberDao.updateBoard(boardInfo);
	}

	// 1대1문의 수정 버튼 클릭 시 inquiry테이블 수정 작업
	@Override
	public int updateInquiry(BoardInfo boardInfo) {
		
		return memberDao.updateInquiry(boardInfo);
	}
	
	// 1대1 문의 삭제 버튼 클릭 시 boardStatus 상태 변경
	@Override
	public int updateBoardStatus(int boardId) {
		
		return memberDao.updateBoardStatus(boardId);
	}
	
	// ================================== Mylist 영은==========================================

	//마이리스트 등록 검색 
	@Override
	public ArrayList<Mylist> searchListRes(String searchRes) {
		return memberDao.searchListRes(searchRes);
	}
	
	//마이리스트 리스트 
	@Override
	public Mylist selectmylist(int mlId1) {
		return memberDao.selectmylist(mlId1);
	}

	//마이리스트 등록
	@Override
	public int insertMylist(String themeTitle, int themeWriter) {
		return memberDao.insertMylist(themeTitle, themeWriter);
	}

	//음식점 등록
	@Override
	public int insertMylistRes(String th) {
		return memberDao.insertMylistRes(th);
	}


	@Override
	public ArrayList<MyListAdmin> selectmyPageMylist() {
		return memberDao.selectmyPageMylist();
	}

	
	@Override
	public int deleteMylistR(MyListAdmin ma) {
		return memberDao.deleteMylistR(ma);
	}
	
	@Override
	public int deleteMylist(MyListAdmin ma) {
		return memberDao.deleteMylist(ma);
	}

	@Override
	public MyListAdmin selectOneMylist(MyListAdmin ma) {
		return memberDao.selectOneMylist(ma);
	}

	@Override
	public ArrayList<Restaurant> selectListMylistRestaurant(MyListAdmin ma) {
		return memberDao.selectListMylistRestaurant(ma);
	}

	@Override
	public int modifyMylist(MyListAdmin ma) {
		return memberDao.modifyMylist(ma);
	}

	@Override
	public int deleteRList(MyListAdmin ma) {
		return memberDao.deleteRList(ma);
	}

	@Override
	public int insertMylistRestaurant(String mh, MyListAdmin ma) {
		return memberDao.insertMylistRestaurant(mh,ma);
	}

	@Override
	public int recommendMylst(int mlId) {
		return memberDao.recommendMylst(mlId);
	}


	
























	
	
}
