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
		
		return memberDao.selectoneMember(m);
	}

	//회원가입메소드
	@Override
	public int insertMember(Member m) {
		
		return memberDao.insertMember(m);
	}

	
}
