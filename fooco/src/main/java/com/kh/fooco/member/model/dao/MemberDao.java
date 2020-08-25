package com.kh.fooco.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.member.model.vo.Member;


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

	

	
}
