package com.neusoft.dao.srldao;

import com.neusoft.bean.lybean.UserInfo;



public interface UserInfoMapper {
	
	//登录
	UserInfo login(UserInfo user);
	
	//检测
	UserInfo checkemail(UserInfo user);
	
	//注册
	void regist(UserInfo user);
}
