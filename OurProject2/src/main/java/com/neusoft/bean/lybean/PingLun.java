package com.neusoft.bean.lybean;



public class PingLun {
	private int houseid;
	private int uid;
	private double score;
	private String pinglun;
	private String ptime;
	private Integer startindex;
	private Integer pagesize;
	public Integer getStartindex() {
		return startindex;
	}
	public void setStartindex(Integer startindex) {
		this.startindex = startindex;
	}
	public Integer getPagesize() {
		return pagesize;
	}
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}
	public int getHouseid() {
		return houseid;
	}
	public void setHouseid(int houseid) {
		this.houseid = houseid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public String getPinglun() {
		return pinglun;
	}
	public void setPinglun(String pinglun) {
		this.pinglun = pinglun;
	}
	public String getPtime() {
		return ptime;
	}
	public void setPtime(String ptime) {
		this.ptime = ptime;
	}
	
}
