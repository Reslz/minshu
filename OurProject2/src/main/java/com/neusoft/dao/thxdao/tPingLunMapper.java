package com.neusoft.dao.thxdao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.neusoft.bean.lybean.PingLun;

public interface tPingLunMapper {
	List<Map<Object,Object>> findPingLunByHid(@Param("houseid")Integer houseid,@Param("startpage")Integer startpage,@Param("pagesize")Integer pagesize);
	
	Double avgScore(Integer houseid);
	
	Integer countPingLun(Integer houseid);
}
