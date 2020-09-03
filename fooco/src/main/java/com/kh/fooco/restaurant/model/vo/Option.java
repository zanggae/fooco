package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;

public class Option implements Serializable {
	
	private static final long serialVersionUID = 1235008267745979247L;
	
	private int resId;
	private int optionId;
	private String optionName;
	
	public Option() {}
	public Option(int resId, int optionId, String optionName) {
		super();
		this.resId = resId;
		this.optionId = optionId;
		this.optionName = optionName;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public int getOptionId() {
		return optionId;
	}
	public void setOptionId(int optionId) {
		this.optionId = optionId;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	@Override
	public String toString() {
		return "Option [resId=" + resId + ", optionId=" + optionId + ", optionName=" + optionName + "]";
	}
	
}
