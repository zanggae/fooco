package com.kh.fooco.admin.model.vo;

import java.io.Serializable;

public class Search implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4287046261008388382L;
	private String search;
	private String category;
	private String sort;
	public Search() {
		super();
	}
	public Search(String search, String category, String sort) {
		super();
		this.search = search;
		this.category = category;
		this.sort = sort;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Search [search=" + search + ", category=" + category + ", sort=" + sort + "]";
	}
	
	
}
