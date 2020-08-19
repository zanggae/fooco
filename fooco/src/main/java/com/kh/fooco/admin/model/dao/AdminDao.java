package com.kh.fooco.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;

@Repository("adminDao")
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 방문자 수 조회
	public VisitorCount selectOneVisitorCount() {
		return sqlSessionTemplate.selectOne("memberMapper.selectOneVisitorCount");
	}

	// 회원현황 조회
	public MembershipStatus selectOneMembershipStatus() {
		return sqlSessionTemplate.selectOne("memberMapper.selectOneMembershipStatus");
	}

	// 맴버십 회원 조회
	public MembershipCount selectOneMembershipCount() {
		return sqlSessionTemplate.selectOne("memberMapper.selectOneMembershipCount");
	}

	public int insertVisitorCount() {
		return sqlSessionTemplate.selectOne("memberMapper.selectOneMembershipCount");
	}

}
