package com.neusoft.service.byservice;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neusoft.bean.lybean.PinglunInfo;
import com.neusoft.bean.lybean.UserOrderInfo;

public interface UserOrdersService {
	int orderCount(int uid);
	List<UserOrderInfo> userOrderList(int uid,int startindex,int pageSize);
	List<UserOrderInfo> userHistory(int uid,int startindex,int pageSize);
	int hisOrderCount(int uid);
	void pingLun(PinglunInfo pinglunInfo);
}
