package com.neusoft.controller.bycontroller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.LocationInfo;
import com.neusoft.bean.lybean.UserInfo;
import com.neusoft.service.byservice.HeadPicService;
import com.neusoft.service.byservice.HouseInfoService;
import com.neusoft.util.UUIDGenerateUtil;
@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class HouseInfoController {
	@Autowired
	private HouseInfoService houseInfoService;
		
	@RequestMapping("/addHouse")
	@ResponseBody
	public String addHouse(HouseInfo houseInfo,LocationInfo locationInfo) {		
		houseInfoService.addHouse(houseInfo, locationInfo);	
		return "1";
	}
	 	
}
