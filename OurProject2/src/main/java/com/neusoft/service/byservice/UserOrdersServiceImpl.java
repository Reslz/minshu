package com.neusoft.service.byservice;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.PinglunInfo;
import com.neusoft.bean.lybean.UserOrderInfo;
import com.neusoft.dao.bydao.UserOrdersMapper;

@Service
public class UserOrdersServiceImpl implements UserOrdersService{
	@Autowired
	private UserOrdersMapper userOrdersMapper;
	
	
	@Override
	public int orderCount(int uid) {
		return userOrdersMapper.orderCount(uid);
	}

	@Override
	public List<UserOrderInfo> userOrderList(int uid,int startindex,int pageSize) {
		List<UserOrderInfo> list = userOrdersMapper.userOrderList(uid,startindex,pageSize);
		return list;
	}

	@Override
	public List<UserOrderInfo> userHistory(int uid,int startindex,int pageSize) {
		List<UserOrderInfo> list = userOrdersMapper.userHistory(uid,startindex,pageSize);
		return list;
	}

	@Override
	public int hisOrderCount(int uid) {
		return userOrdersMapper.hisOrderCount(uid);
	}

	@Override
	public void pingLun(PinglunInfo pinglunInfo) {
		userOrdersMapper.pingLun(pinglunInfo);
	}

	
	
}
