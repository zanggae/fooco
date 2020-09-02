package com.kh.fooco.theme.model.vo;

import java.io.Serializable;

import org.springframework.web.util.UriComponentsBuilder;

public class ThemeSearch implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6016456097555830995L;
	
	private String keyword;

	public ThemeSearch() {
		super();
	}

	public ThemeSearch(String keyword) {
		super();
		this.keyword = keyword;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	
	public String getListLink() {
		  UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
	              // 필요한 패러미터를 쉽게 추가
				  .queryParam("keyword", this.getKeyword());
		  
		  return builder.toUriString();
	  }
	

	@Override
	public String toString() {
		return "ThemeSearch [keyword=" + keyword + "]";
	}
	
	
	
	

}
