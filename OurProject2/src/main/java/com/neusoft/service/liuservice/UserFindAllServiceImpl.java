package com.neusoft.service.liuservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.neusoft.dao.liudao.UserFindAllMapper;
@Service
public class UserFindAllServiceImpl implements UserFindAllService{
	@Autowired
	private UserFindAllMapper userFindAllMapper;

	@Override
	public List<Map<String, Object>> findUserInfo() {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list = userFindAllMapper.findUserInfo();
		return list;
	}


	
	
		
		
		
		
	
	
}
