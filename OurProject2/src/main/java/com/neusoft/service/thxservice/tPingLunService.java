package com.neusoft.service.thxservice;

import java.util.List;
import java.util.Map;

import com.neusoft.bean.lybean.PingLun;

public interface tPingLunService {
	List<Map<Object, Object>> findPingLunByHid(Integer houseid,Integer startpage,Integer pagesize);
	Double avgScore(Integer houseid);
	Integer countPingLun(Integer houseid);
}
