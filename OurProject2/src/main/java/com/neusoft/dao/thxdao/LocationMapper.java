package com.neusoft.dao.thxdao;

import java.util.List;

import com.neusoft.bean.lybean.Location;

public interface LocationMapper {
	List<Location> findLocation();
	List<Location> findCity();
}
