package com.neusoft.controller.bycontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.bean.lybean.PinglunInfo;
import com.neusoft.bean.lybean.UserOrderInfo;
import com.neusoft.service.byservice.UserOrdersService;
@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class UserOrdersController {
	@Autowired
	private UserOrdersService userOrdersService;
	
	@RequestMapping("/orderCount")
	@ResponseBody
	public int orderCount(int uid) {
		int c = userOrdersService.orderCount(uid);
		return c;
	}
	
	@RequestMapping("/userOrderList")
	@ResponseBody
	public List<UserOrderInfo> userOrderList(int uid,int startindex,int pageSize){
		List<UserOrderInfo> list = userOrdersService.userOrderList(uid,startindex,pageSize);
		return list;
	}
	
	@RequestMapping("/userHistory")
	@ResponseBody
	public List<UserOrderInfo> userHistory(int uid,int startindex,int pageSize){
		List<UserOrderInfo> list = userOrdersService.userHistory(uid,startindex,pageSize);
		return list;
	}
	
	@RequestMapping("/hisOrderCount")
	@ResponseBody
	public int hisOrderCount(int uid) {
		return userOrdersService.hisOrderCount(uid);
	}
	
	@RequestMapping("/pingLun")
	@ResponseBody
	public String pingLun(PinglunInfo pinglunInfo) {
		userOrdersService.pingLun(pinglunInfo);
		return "1";
	}
	
	
}
