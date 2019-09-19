package com.neusoft.service.slzservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.PinglunInfo;
import com.neusoft.bean.lybean.TiYanDaRen;
import com.neusoft.bean.lybean.TiYanInFo;
import com.neusoft.bean.lybean.UserInfo;
import com.neusoft.bean.lybean.UserOrderInfo;
import com.neusoft.dao.slzdao.TYDRMapper;

@Service("drService")
public class TYDRServiceImpl implements TYDRService{

	@Autowired
	private TYDRMapper drMapper ;
	
	@Override
	public void drAdd(TiYanDaRen dr) {
		// TODO Auto-generated method stub
		drMapper.drAdd(dr);
	}

	@Override
	public void submitTiYan(TiYanInFo ty) {
		// TODO Auto-generated method stub
		drMapper.submitTiYan(ty);
	}

	@Override
	public UserInfo selectDaRen(int uid) {
		// TODO Auto-generated method stub
		UserInfo userInfo = drMapper.selectDaRen(uid);
		return userInfo;
	}

	@Override
	public int orderCount(int uid) {
		return drMapper.orderCount(uid);
	}

	@Override
	public List<UserOrderInfo> userOrderList(int uid) {
		List<UserOrderInfo> list = drMapper.userOrderList(uid);
		return list;
	}

	@Override
	public List<UserOrderInfo> userHistory(int uid) {
		List<UserOrderInfo> list = drMapper.userHistory(uid);
		return list;
	}

	@Override
	public int hisOrderCount(int uid) {
		return drMapper.hisOrderCount(uid);
	}

	@Override
	public void pingLun(PinglunInfo pinglunInfo) {
		drMapper.pingLun(pinglunInfo);
	}

}
