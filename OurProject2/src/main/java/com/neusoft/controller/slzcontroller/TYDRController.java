package com.neusoft.controller.slzcontroller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.neusoft.bean.lybean.Bookinginfo;
import com.neusoft.bean.lybean.PinglunInfo;
import com.neusoft.bean.lybean.TiYanDaRen;
import com.neusoft.bean.lybean.TiYanInFo;
import com.neusoft.bean.lybean.UserInfo;
import com.neusoft.bean.lybean.UserOrderInfo;
import com.neusoft.service.slzservice.TYDRService;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/tiyandaren")
public class TYDRController {

	@Autowired
	private TYDRService drService ;
	
	@RequestMapping(value = "/add" , method = {RequestMethod.GET , RequestMethod.POST})
	public String drAdd(TiYanDaRen dr) {
		drService.drAdd(dr);
		return "1";
	}
	
	@RequestMapping(value = "/submitTiYan",method = {RequestMethod.POST,RequestMethod.GET})
	public int submitTiYan(TiYanInFo ty) {
		try {
			drService.submitTiYan(ty);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}
	
	@RequestMapping(value = "/selectDaRen",method = {RequestMethod.POST,RequestMethod.GET})
	public int selectDaRen(@Param("uid") int uid) {
		UserInfo userInfo = drService.selectDaRen(uid);
		if(userInfo == null) {
			return 1 ;
		}else {
			return 0 ;
		}
	}
	
	@RequestMapping("/daRenCount")
	@ResponseBody
	public int orderCount(int uid) {
		int c = drService.orderCount(uid);
		return c;
	}
	
	@RequestMapping("/daRenOrderList")
	@ResponseBody
	public List<UserOrderInfo> userOrderList(int uid){
		List<UserOrderInfo> list = drService.userOrderList(uid);
		return list;
	}
	
	@RequestMapping("/daRenHistory")
	public List<UserOrderInfo> userHistory(int uid){
		List<UserOrderInfo> list = drService.userHistory(uid);
		return list;
	}
	
	@RequestMapping("/daRenOrderCount")
	public int hisOrderCount(int uid) {
		return drService.hisOrderCount(uid);
	}
	
	@RequestMapping("/daRenPingLun")
	public String pingLun(PinglunInfo pinglunInfo) {
		drService.pingLun(pinglunInfo);
		return "1";
	}
	
	
}
