package com.kh.fooco.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class MembershipCount implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 159780345917650796L;
	
	private Date day;		// 맴버십 조회 날짜
	private int gold;		// 골드맴버십회원수
	private int silver;		// 실버맴버십회원수
	private int total;		// 전체맴버십회원수
	public MembershipCount() {
		super();
	}
	public MembershipCount(Date day, int gold, int silver, int total) {
		super();
		this.day = day;
		this.gold = gold;
		this.silver = silver;
		this.total = total;
	}
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public int getGold() {
		return gold;
	}
	public void setGold(int gold) {
		this.gold = gold;
	}
	public int getSilver() {
		return silver;
	}
	public void setSilver(int silver) {
		this.silver = silver;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MembershipCount [day=" + day + ", gold=" + gold + ", silver=" + silver + ", total=" + total + "]";
	}
	
}
