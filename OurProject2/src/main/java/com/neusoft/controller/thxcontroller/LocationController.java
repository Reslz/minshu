package com.neusoft.controller.thxcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.bean.lybean.Location;
import com.neusoft.service.thxservice.LocationService;
import com.neusoft.service.thxservice.LocationServiceImpl;

@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class LocationController {

	@Autowired
	private LocationService locationService; 
	
	@RequestMapping("findLocation")
	@ResponseBody
	public List<Location> findLocation(){
		
		List<Location> list = locationService.findLocation();
		return list;
		
	}
	@RequestMapping("findCity")
	@ResponseBody
	public List<Location> findCity(){
		List<Location> list = locationService.findCity();
		return list;
	}
}
