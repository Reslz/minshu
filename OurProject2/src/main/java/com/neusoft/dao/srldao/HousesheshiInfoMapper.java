package com.neusoft.dao.srldao;

import java.util.List;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.Location;
import com.neusoft.bean.lybean.PingLun;

public interface HousesheshiInfoMapper {
	public List<Location> houselocationinfo(HouseInfo houseinfo);
	public List<PingLun> findpinluninfo(PingLun pingLun);
	
	
	
	
}
