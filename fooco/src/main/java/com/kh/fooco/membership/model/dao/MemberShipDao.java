package com.kh.fooco.membership.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.membership.model.vo.MemberShip;

@Repository("memberShipDao")
public class MemberShipDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<MemberShip> selectMembershipList(MemberShip membership) {
		
		return (ArrayList)sqlSessionTemplate.selectList("membershipMapper.selectMembership",membership);
	}

}
