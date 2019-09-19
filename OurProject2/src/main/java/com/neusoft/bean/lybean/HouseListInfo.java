package com.neusoft.bean.lybean;

import java.sql.Date;

public class HouseListInfo {
	private int houseid;
	private int uid;
	private String housetype;
	private String rentway;
	private int guestnum;
	private int bednum;
	private int roodnum;
	private int toiletnum;
	private String sheshiid;
	private String housename;
	private String presettime;
	private Date settimestar;
	private String miaoshu;
	private String newprice;
	private String oldprice;
	private String province;
	private int id;
	private int locationid;
	private String type;
	
	public int getLocationid() {
		return locationid;
	}
	public void setLocationid(int locationid) {
		this.locationid = locationid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}
	public String getNewprice() {
		return newprice;
	}
	public void setNewprice(String newprice) {
		this.newprice = newprice;
	}
	public String getOldprice() {
		return oldprice;
	}
	public void setOldprice(String oldprice) {
		this.oldprice = oldprice;
	}
	private String city;
	private String county;
	private String floor;
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
	public String getHousetype() {
		return housetype;
	}
	public void setHousetypeid(String housetype) {
		this.housetype = housetype;
	}
	public String getRentway() {
		return rentway;
	}
	public void setRentway(String rentway) {
		this.rentway = rentway;
	}
	public int getGuestnum() {
		return guestnum;
	}
	public void setGuestnum(int guestnum) {
		this.guestnum = guestnum;
	}
	public int getBednum() {
		return bednum;
	}
	public void setBednum(int bednum) {
		this.bednum = bednum;
	}
	public int getRoodnum() {
		return roodnum;
	}
	public void setRoodnum(int roodnum) {
		this.roodnum = roodnum;
	}
	public int getToiletnum() {
		return toiletnum;
	}
	public void setToiletnum(int toiletnum) {
		this.toiletnum = toiletnum;
	}
	public String getSheshiid() {
		return sheshiid;
	}
	public void setSheshiid(String sheshiid) {
		this.sheshiid = sheshiid;
	}
	public String getHousename() {
		return housename;
	}
	public void setHousename(String housename) {
		this.housename = housename;
	}
	public String getPresettime() {
		return presettime;
	}
	public void setPresettime(String presettime) {
		this.presettime = presettime;
	}
	public Date getSettimestar() {
		return settimestar;
	}
	public void setSettimestar(Date settimestar) {
		this.settimestar = settimestar;
	}
	public String getMiaoshu() {
		return miaoshu;
	}
	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCounty() {
		return county;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	@Override
	public String toString() {
		return "HouseListInfo [houseid=" + houseid + ", uid=" + uid + ", housetype=" + housetype + ", rentway="
				+ rentway + ", guestnum=" + guestnum + ", bednum=" + bednum + ", roodnum=" + roodnum + ", toiletnum="
				+ toiletnum + ", sheshiid=" + sheshiid + ", housename=" + housename + ", presettime=" + presettime
				+ ", settimestar=" + settimestar + ", miaoshu=" + miaoshu + ", newprice=" + newprice + ", oldprice="
				+ oldprice + ", province=" + province + ", id=" + id + ", locationid=" + locationid + ", type=" + type
				+ ", city=" + city + ", county=" + county + ", floor=" + floor + "]";
	}


	
}
