package com.kh.fooco.member.model.vo;

import java.io.Serializable;

public class MylistSearch implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5758209056469824360L;
	
	
	private String type;
	private String keyword;
	
	public MylistSearch() {
		super();
	}
	public MylistSearch(String type, String keyword) {
		super();
		this.type = type;
		this.keyword = keyword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "MylistSearch [type=" + type + ", keyword=" + keyword + "]";
	}
	
	

}
