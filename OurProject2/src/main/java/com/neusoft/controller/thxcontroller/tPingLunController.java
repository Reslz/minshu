package com.neusoft.controller.thxcontroller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.bean.lybean.PingLun;
import com.neusoft.service.thxservice.tHouseInfoServiceImpl;
import com.neusoft.service.thxservice.tPingLunService;

@CrossOrigin(origins = "*", maxAge = 3600)

@Controller
public class tPingLunController {
	@Autowired
	
	private tPingLunService tPingLunService;
	private Object Double;
	@RequestMapping("/findPingLunByHid")
	@ResponseBody
	public List<Map<Object,Object>> findPingLunByHid(Integer houseid,Integer startpage,Integer pagesize){
		List<Map<Object,Object>> list = tPingLunService.findPingLunByHid(houseid,startpage,pagesize);
		
		return list;
	}
	
	@RequestMapping("/avgScore")
	@ResponseBody
	public String avgScore(Integer houseid) {
		
		Double avgScore = tPingLunService.avgScore(houseid); 
        String result = String.format("%.1f",avgScore);

		return result;
		

		
	}
	@RequestMapping("/countPL")
	@ResponseBody
	public Integer countPingLun(Integer houseid) {
		Integer countPingLun = tPingLunService.countPingLun(houseid);
		return countPingLun;
	}
}
