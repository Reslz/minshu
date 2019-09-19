package com.neusoft.controller.bycontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.bean.lybean.HouseType;
import com.neusoft.bean.lybean.RentWay;
import com.neusoft.bean.lybean.SheShiInfo;
import com.neusoft.service.byservice.HouseTypeService;

@CrossOrigin(origins = "*", maxAge = 3600)
@Controller

public class HouseTypeController {
	@Autowired
	private HouseTypeService houseTypeService;
	
	@RequestMapping("/houseType")
	@ResponseBody
	public List<HouseType> houseType() {
		List<HouseType> list = houseTypeService.findAll();
		return list;
	}
	
	@RequestMapping("/sheshi")
	@ResponseBody
	public List<SheShiInfo> sheshiInfo() {
		List<SheShiInfo> list = houseTypeService.findSheshi();
		return list;
	}
	
	@RequestMapping("/rentway")
	@ResponseBody
	public List<RentWay> rentWay() {
		List<RentWay> list = houseTypeService.rentway();
		return list;
	}
	
}
