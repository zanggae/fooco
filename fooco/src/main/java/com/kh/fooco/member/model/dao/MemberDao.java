package com.kh.fooco.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.member.model.vo.Member;


@Repository("memberDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;


	public Member selectoneMember(Member m) {
		
		return sqlSessionTemplate.selectOne("memberMapper.selectOneMember",m);
	}

	

	
}
