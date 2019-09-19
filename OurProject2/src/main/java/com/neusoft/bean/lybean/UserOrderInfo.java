package com.neusoft.bean.lybean;

import java.sql.Date;

public class UserOrderInfo {
	    private Date check_in_time;
	    private Date check_out_time;
	    private int houseid;
		private int uid;
		private String housename;
		private String newprice;
		private String province;
		private String city;
		private String county;
		private String floor;
		private String realname;
		private String tel;
		private String email;
		private String idcard;
		
		public String getIdcard() {
			return idcard;
		}
		public void setIdcard(String idcard) {
			this.idcard = idcard;
		}
		public Date getCheck_in_time() {
			return check_in_time;
		}
		public void setCheck_in_time(Date check_in_time) {
			this.check_in_time = check_in_time;
		}
		public Date getCheck_out_time() {
			return check_out_time;
		}
		public void setCheck_out_time(Date check_out_time) {
			this.check_out_time = check_out_time;
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
		public String getHousename() {
			return housename;
		}
		public void setHousename(String housename) {
			this.housename = housename;
		}
		public String getNewprice() {
			return newprice;
		}
		public void setNewprice(String newprice) {
			this.newprice = newprice;
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
		public String getRealname() {
			return realname;
		}
		public void setRealname(String realname) {
			this.realname = realname;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		@Override
		public String toString() {
			return "UserOrderInfo [check_in_time=" + check_in_time + ", check_out_time=" + check_out_time + ", houseid="
					+ houseid + ", uid=" + uid + ", housename=" + housename + ", newprice=" + newprice + ", province="
					+ province + ", city=" + city + ", county=" + county + ", floor=" + floor + ", realname=" + realname
					+ ", tel=" + tel + ", email=" + email + ", idcard=" + idcard + "]";
		}

		
		
}
