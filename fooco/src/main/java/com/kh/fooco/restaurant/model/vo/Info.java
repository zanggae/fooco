package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;
import java.util.ArrayList;

public class Info implements Serializable {
	
	private static final long serialVersionUID = -4268363785642413179L;
	
	private int resId;
	private String infoCategoryName;
	private String infoOperatingTime;
	private ArrayList<Filter> infoFilter;	
	private ArrayList<Bestmenu> bestmenu;
	
	public Info() {}
	public Info(int resId, String infoCategoryName, String infoOperatingTime, ArrayList<Filter> infoFilter,
			ArrayList<Bestmenu> bestmenu) {
		super();
		this.resId = resId;
		this.infoCategoryName = infoCategoryName;
		this.infoOperatingTime = infoOperatingTime;
		this.infoFilter = infoFilter;
		this.bestmenu = bestmenu;
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
	public String getInfoOperatingTime() {
		return infoOperatingTime;
	}
	public void setInfoOperatingTime(String infoOperatingTime) {
		this.infoOperatingTime = infoOperatingTime;
	}
	public ArrayList<Filter> getInfoFilter() {
		return infoFilter;
	}
	public void setInfoFilter(ArrayList<Filter> infoFilter) {
		this.infoFilter = infoFilter;
	}
	public ArrayList<Bestmenu> getBestmenu() {
		return bestmenu;
	}
	public void setBestmenu(ArrayList<Bestmenu> bestmenu) {
		this.bestmenu = bestmenu;
	}
	@Override
	public String toString() {
		return "Info [resId=" + resId + ", infoCategoryName=" + infoCategoryName + ", infoOperatingTime="
				+ infoOperatingTime + ", infoFilter=" + infoFilter + ", bestmenu=" + bestmenu + "]";
	}
	
}
