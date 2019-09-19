package com.neusoft.dao.slzdao;

import java.util.List;

import com.neusoft.bean.lybean.PinglunInfo;
import com.neusoft.bean.lybean.TiYanDaRen;
import com.neusoft.bean.lybean.TiYanInFo;
import com.neusoft.bean.lybean.UserInfo;
import com.neusoft.bean.lybean.UserOrderInfo;

public interface TYDRMapper {

	void drAdd(TiYanDaRen dr);
	
	void submitTiYan(TiYanInFo ty);
	
	UserInfo selectDaRen(int uid);
	
	int orderCount(int uid);
	List<UserOrderInfo> userOrderList(int uid);
	List<UserOrderInfo> userHistory(int uid);
	int hisOrderCount(int uid);
	void pingLun(PinglunInfo pinglunInfo);
}
