package com.neusoft.dao.bydao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neusoft.bean.lybean.PinglunInfo;
import com.neusoft.bean.lybean.UserOrderInfo;

public interface UserOrdersMapper {
	int orderCount(int uid);
	List<UserOrderInfo> userOrderList(@Param("uid") int uid,@Param("startindex") int startindex,@Param("pageSize") int pageSize);
	List<UserOrderInfo> userHistory(@Param("uid") int uid,@Param("startindex") int startindex,@Param("pageSize") int pageSize);
	int hisOrderCount(int uid);
	void pingLun(PinglunInfo pinglunInfo);
}
