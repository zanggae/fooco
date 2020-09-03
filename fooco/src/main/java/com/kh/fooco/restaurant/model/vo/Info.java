package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;
import java.util.ArrayList;

public class Info implements Serializable {
	
	private static final long serialVersionUID = -4268363785642413179L;
	
	private int resId;
	private String infoCategoryName;
	private String infoBestMenu;
	private String infoOperatingTime;
	private ArrayList<Option> infoOption;
	
	public Info() {}
	public Info(int resId, String infoCategoryName, String infoBestMenu, String infoOperatingTime,
			ArrayList<Option> infoOption) {
		super();
		this.resId = resId;
		this.infoCategoryName = infoCategoryName;
		this.infoBestMenu = infoBestMenu;
		this.infoOperatingTime = infoOperatingTime;
		this.infoOption = infoOption;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public String getInfoCategoryName() {
		return infoCategoryName;
	}
	public void setInfoCategoryName(String infoCategoryName) {
		this.infoCategoryName = infoCategoryName;
	}
	public String getInfoBestMenu() {
		return infoBestMenu;
	}
	public void setInfoBestMenu(String infoBestMenu) {
		this.infoBestMenu = infoBestMenu;
	}
	public String getInfoOperatingTime() {
		return infoOperatingTime;
	}
	public void setInfoOperatingTime(String infoOperatingTime) {
		this.infoOperatingTime = infoOperatingTime;
	}
	public ArrayList<Option> getInfoOption() {
		return infoOption;
	}
	public void setInfoOption(ArrayList<Option> infoOption) {
		this.infoOption = infoOption;
	}
	@Override
	public String toString() {
		return "Info [resId=" + resId + ", infoCategoryName=" + infoCategoryName + ", infoBestMenu=" + infoBestMenu
				+ ", infoOperatingTime=" + infoOperatingTime + ", infoOption=" + infoOption + "]";
	}
	
}
