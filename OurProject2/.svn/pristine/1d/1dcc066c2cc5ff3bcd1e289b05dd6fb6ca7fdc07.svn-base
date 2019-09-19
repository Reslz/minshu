package com.neusoft.dao.thxdao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.neusoft.bean.lybean.HouseInfo;

public interface tHouseInfoMapper {
	List<Map<Object, Object>> findHouseByLid(String city);
	
	List<Map<Object, Object>> findHouseByHid(Integer houseid);

	List<Map<Object, Object>> findUserByHid(Integer houseid);
	
	List<Map<Object,Object>> findHouseByPage(@Param("city")String city,@Param("startpage")Integer startpage,@Param("pagesize")Integer pagesize);

	int countH(String city);
}
