package com.kh.fooco.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooco.member.model.dao.MemberDao;
import com.kh.fooco.member.model.vo.Member;

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

	
}
