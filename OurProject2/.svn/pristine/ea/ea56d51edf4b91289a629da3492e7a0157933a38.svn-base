package com.neusoft.controller.liucontroller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.neusoft.service.liuservice.UserFindAllService;
@CrossOrigin(origins = "*", maxAge = 3600)
@Controller

public class UserFindAllController {
	@Autowired
	private UserFindAllService userFindAllService;
	@RequestMapping("findUserFindAll")
	@ResponseBody
	
	public List<Map<String, Object>> findUserInfo(){
		List<Map<String,Object>> list = userFindAllService.findUserInfo();
		return list;
		
	}
}
