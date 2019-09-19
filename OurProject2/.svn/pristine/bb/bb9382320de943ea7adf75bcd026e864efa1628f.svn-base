package com.neusoft.dao.bydao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.HouseListInfo;

public interface HouseListMapper {
	int countHouse(int uid);
	List<HouseListInfo> houseList(@Param("uid") int uid,@Param("startindex") int startindex,@Param("pageSize") int pageSize);
	void housedel(int houseid);
	void updateHouse(HouseInfo houseInfo);//编辑房源信息
	HouseListInfo showHouseInfo(int houseid);
}
