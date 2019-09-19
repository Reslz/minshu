package com.neusoft.bean.lybean;

import java.util.List;

public class QueryHouseResult {

	private List<Integer> array ;
	private Integer pageSize ;
	private Integer currPage ;
	@SuppressWarnings("unused")
	private Integer startIndex ;
	private String province;
	private String city;

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

	public Integer getStartIndex() {
		return (currPage-1)*pageSize;
	}

	public void setStartIndex() {
		this.startIndex = (currPage-1)*pageSize;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getCurrPage() {
		return currPage;
	}

	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	public List<Integer> getLocationid() {
		return array;
	}

	public void setLocationid(List<Integer> locationid) {
		this.array = locationid;
	}
	
}
