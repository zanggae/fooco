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

	
}
