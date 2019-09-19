package com.neusoft.service.byservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.UserInfo;
import com.neusoft.dao.bydao.UserEditMapper;

@Service
public class UserEditServiceImpl implements UserEditService{
	@Autowired
	private UserEditMapper userEditMapper;
	@Override
	public String selectById(int uid) {
		String email = userEditMapper.selectById(uid);
		return email;
	}
	
	@Override
	public void userEdit(UserInfo userInfo) {
		userEditMapper.userEdit(userInfo);
		
	}

}
