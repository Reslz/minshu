package com.neusoft.service.thxservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.dao.thxdao.tHouseInfoMapper;

@Service
public  class tHouseInfoServiceImpl implements tHouseInfoService{
	
	@Autowired
	private tHouseInfoMapper thouseInfoMapper;
	@Override
	public List<Map<Object, Object>> findHouseByLid(String city) {
		// TODO Auto-generated method stub
		 List<Map<Object, Object>> list = thouseInfoMapper.findHouseByLid(city);
		return list;
	}
	@Override
	public List<Map<Object, Object>> findHouseByHid(Integer houseid) {
		// TODO Auto-generated method stub
		List<Map<Object, Object>> list = thouseInfoMapper.findHouseByHid(houseid);
		return list;
	}
	@Override
	public List<Map<Object, Object>> findUserByHid(Integer houseid) {
		
		List<Map<Object, Object>> list = thouseInfoMapper.findUserByHid(houseid);
		return list;
	}
	@Override
	public List<Map<Object, Object>> findHouseByPage(String city, Integer startpage, Integer pagesize) {
		List<Map<Object,Object>> list = thouseInfoMapper.findHouseByPage(city, startpage, pagesize);
		return list;
	}
	@Override
	public int countH(String city) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
