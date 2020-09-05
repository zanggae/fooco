package com.kh.fooco.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.member.model.vo.Follower;
import com.kh.fooco.member.model.vo.Following;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.vo.Restaurant;


@Repository("memberDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	//로그인 메소드
	public Member loginMember(Member m) {
		
		return sqlSessionTemplate.selectOne("memberMapper.loginMember",m);
	}

	//회원가입 메소드
	public int insertMember(Member m) {
		
		return sqlSessionTemplate.insert("memberMapper.insertMember",m);
	}
	
	//닉네임 중복체크 메소드
	public int checkNickName(String nickName) {
		
		return sqlSessionTemplate.selectOne("memberMapper.checkNickName",nickName);
	}
	

	public String searchPwdMember(Member m) {
		
		return sqlSessionTemplate.selectOne("memberMapper.searchPwdMember",m);
	}
	
	public int searchMemberPwd(Member m) {
		
		return sqlSessionTemplate.update("memberMapper.searchMemberPwd",m);
	}

	//이메일 중복체크 메소드
	public int chekchemailDup(String email) {
		
		return sqlSessionTemplate.selectOne("memberMapper.checkemailDup",email);
	}


	// ================================== MyPage 동원 ===========================================

	public int checkNickNameDup(String nickName) {
		
		return sqlSessionTemplate.selectOne("mypageMapper.checkNickNameDup",nickName);
	}

	public int updateMemberInfo(Member m) {
		
		return sqlSessionTemplate.update("mypageMapper.updateMemberInfo",m);
	}

	public int updateMemberWithdrawal(Member m) {
		
		return sqlSessionTemplate.update("mypageMapper.updateMemberWithdrawal",m);
	}

	// 팔로워 수 카운트 메소드
	public int selectOneFollowCount(Member m) {
		
		return sqlSessionTemplate.selectOne("mypageMapper.selectOneFollowCount",m);
	}
	
	// 팔로잉 수 카운트 메소드
	public int selectOneFollowingCount(Member m) {
		
		return sqlSessionTemplate.selectOne("mypageMapper.selectOneFollowingCount",m);
	}
	
	// 프로필 사진 조회 메소드
	public String selectOneProFile(Member m) {
		
		return sqlSessionTemplate.selectOne("mypageMapper.selectOneProFile",m);
	}

	public int updateMemberProfile(Member m) {
		
		return sqlSessionTemplate.update("mypageMapper.updateMemberProfile",m);
	}

	// 팔로우 페이지 팔로워 메소드
	public ArrayList<Follower> selectFollower(Member m) {
	
		return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectFollower",m);
	}

	// 팔로우 페이지 팔로잉 메소드
	public ArrayList<Following> selectFollowing(Member m) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectFollowing",m);
	}
	
	// 나의 활동 리뷰 수 메소드
	public int selectOneReviewCount(Member m) {
		
		return sqlSessionTemplate.selectOne("mypageMapper.selectOneReviewCount",m);
	}
	// 나의 활동 마이리스트 수 메소드
	public int selectOneMyListCount(Member m) {
		
		return sqlSessionTemplate.selectOne("mypageMapper.selectOneMyListCount",m);
	}
	// 나의 활동 체크인 수 메소드
	public int selectOneCheckInCount(Member m) {
		
		return sqlSessionTemplate.selectOne("mypageMapper.selectOneCheckInCount",m);
	}

	// 체크인 등록 페이지에서 음식점 조회
	public ArrayList<Restaurant> selectListRestaurant(String restitle) {
	
		return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectListRestaurant", restitle);
	}
	
	
	

}
