package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;

public class Filter implements Serializable{

	private static final long serialVersionUID = 7513057434680844318L;
	
	private int resId;
	private int filterId;
	private String filterName;
	
	public Filter() {}
	public Filter(int resId, int filterId, String filterName) {
		super();
		this.resId = resId;
		this.filterId = filterId;
		this.filterName = filterName;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public int getFilterId() {
		return filterId;
	}
	public void setFilterId(int filterId) {
		this.filterId = filterId;
	}
	public String getFilterName() {
		return filterName;
	}
	public void setFilterName(String filterName) {
		this.filterName = filterName;
	}	
	@Override
	public String toString() {
		return "Filter [resId=" + resId + ", filterId=" + filterId + ", filterName=" + filterName + "]";
	}	
	
}
