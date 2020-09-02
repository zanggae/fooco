package com.kh.fooco.membership.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.membership.model.vo.Coupon;
import com.kh.fooco.membership.model.vo.MemberShip;

@Repository("memberShipDao")
public class MemberShipDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	//멤버십 종류 조회
	public ArrayList<MemberShip> selectMembershipList(MemberShip membership) {
		
		return (ArrayList)sqlSessionTemplate.selectList("membershipMapper.selectMembership",membership);
	}
	
	//쿠폰 종류 조회
		public ArrayList<Coupon> selectCouponList() {
			
			return (ArrayList)sqlSessionTemplate.selectList("couponMapper.selectCoupon");
		}

	//결제 후 Gold멤버십 insert
	public int insertGoldMembership(MemberShip membership) {
		
		return sqlSessionTemplate.insert("membershipMapper.insertGoldMembership",membership);
	}
	//결제 후 Silver멤버십 insert
	public int insertSilverMembership(MemberShip membership) {
		
		return sqlSessionTemplate.insert("membershipMapper.insertSilverMembership",membership);
	}

	//결제 후 쿠폰 insert
	public int insertCoupon1(MemberShip membership) {
		
		return sqlSessionTemplate.insert("membershipMapper.insertCoupon1",membership);
	}
	//결제 후 쿠폰 insert
	public int insertCoupon2(MemberShip membership) {
		
		return sqlSessionTemplate.insert("membershipMapper.insertCoupon2",membership);
	}
	public int insertCoupon3(MemberShip membership) {
		
		return sqlSessionTemplate.insert("membershipMapper.insertCoupon3",membership);
	}

}
