package com.kh.fooco.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;

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
	
	// 첫 방문시 생성
	public int insertVisitorCount() {
		return sqlSessionTemplate.insert("memberMapper.insertVisitorCount");
	}
	
	// 방문시 업데이트
	public int updateVisitorCount() {
		return sqlSessionTemplate.update("memberMapper.updateVisitorCount");
	}

	public ArrayList<Member> selectlistMember(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("memberMapper.selectlistMember", null, rowBounds);
	}

}
