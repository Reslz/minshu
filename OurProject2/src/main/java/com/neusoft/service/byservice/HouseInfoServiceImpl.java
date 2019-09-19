package com.neusoft.service.byservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.LocationInfo;
import com.neusoft.dao.bydao.HouseInfoMapper;
import com.neusoft.dao.bydao.byLocationMapper;

@Service
public class HouseInfoServiceImpl implements HouseInfoService{
	@Autowired
	private HouseInfoMapper houseInfoMapper;
	@Autowired
	private byLocationMapper locationMapper;

	@Override
	public void addHouse(HouseInfo houseInfo,LocationInfo locationInfo) {
		locationMapper.addLocation(locationInfo);
		int locationid = locationMapper.findLocation(locationInfo);
		
		houseInfo.setLocationid(locationid);
		houseInfoMapper.addHouse(houseInfo);
	
	}

	
	
	
}
