package com.neusoft.service.srlservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.UserInfo;
import com.neusoft.dao.srldao.UserInfoMapper;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService{

	@Autowired
	private UserInfoMapper userInfoMapper;

	@Override
	public UserInfo login(UserInfo user) {
		return userInfoMapper.login(user);
		
	}

	//注册
	@Override
	public void regist(UserInfo user) {
		userInfoMapper.regist(user);
	}

	
	//检测
	@Override
	public UserInfo checkemail(UserInfo user) {
	return	userInfoMapper.checkemail(user);
		 
	}
	
	
	

}
