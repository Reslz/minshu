package com.neusoft.service.srlservice;

import java.util.List;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.Bookinginfo;
import com.neusoft.bean.lybean.PictureInfo;

public interface CityInfoService {

	public List<PictureInfo> findpictureinfo();
	public HouseInfo findhouseinfo(HouseInfo houseInfo);
	
	//房间订单
	public void submintbookinfo(Bookinginfo order);
	
}
