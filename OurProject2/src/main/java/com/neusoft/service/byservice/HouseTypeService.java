package com.neusoft.service.byservice;

import java.util.List;

import com.neusoft.bean.lybean.HouseType;
import com.neusoft.bean.lybean.RentWay;
import com.neusoft.bean.lybean.SheShiInfo;

public interface HouseTypeService {
	List<HouseType> findAll();
	List<SheShiInfo> findSheshi();
	List<RentWay> rentway();
}
