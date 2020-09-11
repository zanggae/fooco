package com.kh.fooco.restaurant.model.vo;

import java.io.Serializable;

public class Bestmenu implements Serializable {
	
	private static final long serialVersionUID = 733308772792943752L;
	
	private int bestmenuId;
	private int resId;
	private String bestmenuName;
	
	public Bestmenu() {}
	public Bestmenu(int bestmenuId, int resId, String bestmenuName) {
		super();
		this.bestmenuId = bestmenuId;
		this.resId = resId;
		this.bestmenuName = bestmenuName;
	}
	public int getBestmenuId() {
		return bestmenuId;
	}
	public void setBestmenuId(int bestmenuId) {
		this.bestmenuId = bestmenuId;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public String getBestmenuName() {
		return bestmenuName;
	}
	public void setBestmenuName(String bestmenuName) {
		this.bestmenuName = bestmenuName;
	}
	@Override
	public String toString() {
		return "Bestmenu [bestmenuId=" + bestmenuId + ", resId=" + resId + ", bestmenuName=" + bestmenuName + "]";
	}
	
}
