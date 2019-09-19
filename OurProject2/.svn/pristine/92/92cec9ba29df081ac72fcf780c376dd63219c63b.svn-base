package com.neusoft.service.thxservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.PingLun;
import com.neusoft.dao.thxdao.tPingLunMapper;
@Service
public  class tPingLunServiceImpl implements tPingLunService {
	
	@Autowired
	private tPingLunMapper tPingLunMapper;
	@Override
	public List<Map<Object,Object>> findPingLunByHid(Integer houseid,Integer startpage,Integer pagesize) {
		
		List<Map<Object,Object>> list = tPingLunMapper.findPingLunByHid(houseid,startpage,pagesize);
		return list;
	}
	@Override
	public Double avgScore(Integer houseid) {
		// TODO Auto-generated method stub
		Double avgScore = tPingLunMapper.avgScore(houseid);
		return avgScore;
	}
	@Override
	public Integer countPingLun(Integer houseid) {
		Integer countPingLun  = tPingLunMapper.countPingLun(houseid);
		return countPingLun;
	}

}
