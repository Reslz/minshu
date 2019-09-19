package com.neusoft.service.byservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.HouseType;
import com.neusoft.bean.lybean.RentWay;
import com.neusoft.bean.lybean.SheShiInfo;
import com.neusoft.dao.bydao.HouseTypeMapper;
@Service
public class HouseTypeServiceImpl implements HouseTypeService{
	@Autowired
	private HouseTypeMapper houseTypeMapper;

	@Override
	public List<HouseType> findAll() {
		List<HouseType> list = houseTypeMapper.findAll();
		return list;
	}

	@Override
	public List<SheShiInfo> findSheshi() {
		List<SheShiInfo> list = houseTypeMapper.findSheshi();
		return list;
	}

	@Override
	public List<RentWay> rentway() {
		List<RentWay> list = houseTypeMapper.rentway();
		return list;
	}
	
	
}
