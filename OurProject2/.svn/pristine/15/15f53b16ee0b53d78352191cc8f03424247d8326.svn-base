package com.neusoft.service.srlservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.Location;
import com.neusoft.bean.lybean.PingLun;
import com.neusoft.dao.srldao.HousesheshiInfoMapper;

@Service("houseservice")
public class HouseInfoServiceImpl implements HouseInfoService{

	@Autowired
	private HousesheshiInfoMapper housemapper;

	@Override
	public List<Location> houselocationinfo(HouseInfo houseinfo) {
		List<Location> list = housemapper.houselocationinfo(houseinfo);
		return list;
	}

	@Override
	public List<PingLun> findpinluninfo(PingLun pingLun) {
		 List<PingLun> list1 = housemapper.findpinluninfo(pingLun);
		return list1;
	}
	

}
