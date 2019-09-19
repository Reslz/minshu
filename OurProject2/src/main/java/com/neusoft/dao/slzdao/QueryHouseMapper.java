package com.neusoft.dao.slzdao;

import java.util.List;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.LocationInfo;
import com.neusoft.bean.lybean.QueryHouseResult;

public interface QueryHouseMapper {

	List<Integer> getLocation(LocationInfo locationInfo);
	
	List<HouseInfo> houseList(QueryHouseResult qh);
	
	Integer getTotalCounts(QueryHouseResult qh);
	
	List<String> getSheShi(List<Integer> list);
	
}
