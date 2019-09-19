package com.neusoft.service.byservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.HouseListInfo;
import com.neusoft.bean.lybean.LocationInfo;
import com.neusoft.dao.bydao.HouseListMapper;
import com.neusoft.dao.bydao.byLocationMapper;
@Service
public class HouseListServiceImpl implements HouseListService{
	@Autowired
	private HouseListMapper houseListMapper;
	@Autowired
	private byLocationMapper locationMapper;
	
	@Override
	public int countHouse(int uid) {
		return houseListMapper.countHouse(uid);
	}

	@Override
	public List<HouseListInfo> houseList(int uid,int startindex,int pageSize) {
		List<HouseListInfo> list = houseListMapper.houseList(uid,startindex,pageSize);
		return list;
	}

	@Override
	public void housedel(int houseid) {
		houseListMapper.housedel(houseid);
		
	}

	@Override
	public void editLocation(LocationInfo locationInfo) {
		locationMapper.editLocation(locationInfo);	
	}
	@Override
	public void updateHouse(HouseInfo houseInfo) {
		houseListMapper.updateHouse(houseInfo);	
	}

	@Override
	public LocationInfo showHouseLoction(int locationid) {
		return locationMapper.showHouseLoction(locationid);
	}

	@Override
	public HouseListInfo showHouseInfo(int houseid) {
		return houseListMapper.showHouseInfo(houseid);
		
	}

}
