package com.neusoft.controller.srlcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.Location;
import com.neusoft.bean.lybean.PingLun;
import com.neusoft.service.srlservice.HouseInfoService;
@CrossOrigin(origins = "*", maxAge = 3600)
@Controller("housecontroller")
@RequestMapping("houseinfo")
public class HouseInfoController {
@Autowired
private HouseInfoService housemapper;
@RequestMapping(value = "houselocationinfo",method = {RequestMethod.GET,RequestMethod.POST})
@ResponseBody
public List<Location> houselocationinfo(HouseInfo houseinfo){
	List<Location> list = housemapper.houselocationinfo(houseinfo);
	return list;
}

@RequestMapping(value = "findpinluninfo",method = {RequestMethod.POST,RequestMethod.GET})
@ResponseBody
public List<PingLun> findpinluninfo(PingLun pingLun) {
	List<PingLun> list = housemapper.findpinluninfo(pingLun);
	return list;
	
}

}
