package com.neusoft.dao.srldao;

import java.util.List;
import java.util.Map;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.Bookinginfo;
import com.neusoft.bean.lybean.PictureInfo;

public interface CityInfoMapper {

	public List<PictureInfo> findpictureinfo();
	public HouseInfo findhouseinfo(HouseInfo houseInfo);
	
	//多表联查
	public List<Map<String,Object>> findRoomInfo(HouseInfo houseInfo);
	
	public void submintbookinfo(Bookinginfo order);
	
	
}
