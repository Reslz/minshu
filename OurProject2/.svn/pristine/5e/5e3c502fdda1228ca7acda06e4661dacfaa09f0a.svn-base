package com.neusoft.service.thxservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.Location;

import com.neusoft.dao.thxdao.LocationMapper;

@Service("locationService")
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationMapper locationMapper;
	@Override
	public List<Location> findLocation() {
		// TODO Auto-generated method stub
		List<Location> list = locationMapper.findLocation();
		return list;
	}
	@Override
	public List<Location> findCity() {
		List<Location> list = locationMapper.findCity();
		return list;
	}

}
