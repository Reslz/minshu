package com.neusoft.controller.bycontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.bean.lybean.UserInfo;
import com.neusoft.service.byservice.UserEditService;

@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class UserEditController {
	@Autowired
	private UserEditService userEditService;
	
	
	
	@RequestMapping("/selectById")
	@ResponseBody
	public String selectById(int uid) {
		String email = userEditService.selectById(uid);
		return email;			
	}
	
	@RequestMapping("/userEdit")
	@ResponseBody
	public String userEdit(UserInfo userInfo) {
		userEditService.userEdit(userInfo);
		return "1";
	}
	
}
