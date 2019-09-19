package com.neusoft.service.byservice;

import java.util.List;
import java.util.Map;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.HouseListInfo;
import com.neusoft.bean.lybean.LocationInfo;

public interface HouseListService {
	int countHouse(int uid);//房源总数
	List<HouseListInfo> houseList(int uid,int startindex,int pageSize);//房源列表展示
	void housedel(int houseid);//删除房源
	void editLocation(LocationInfo locationInfo);//编辑房源地址
	void updateHouse(HouseInfo houseInfo);//编辑房源信息
	
	LocationInfo showHouseLoction(int locationid);
	HouseListInfo showHouseInfo(int houseid);//显示房源已有的信息	

}
