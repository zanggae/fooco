package com.kh.fooco.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.member.model.vo.Follower;
import com.kh.fooco.member.model.vo.Following;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.member.model.vo.Mylist;


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

	
	
	
	
	// ================================== Mylist 영은 ===========================================

	public ArrayList<Mylist> searchListRes(String searchRes) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.searchListRes",searchRes);
	}

	public Mylist selectmylist(int mlId1) {
		System.out.println("쿼리 실행 전 : " + mlId1);
		Mylist ret = sqlSessionTemplate.selectOne("mypageMapper.selectmylist",mlId1);
		System.out.println("쿼리 실행 후 Mylist : " + ret);
		return ret;
	}
	

	

}
