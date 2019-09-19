package com.neusoft.service.byservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.UserInfo;
import com.neusoft.dao.bydao.HeadPicMapper;
@Service
public class HeadPicServiceImpl implements HeadPicService{
	@Autowired
	private HeadPicMapper headPicMapper;
	
	@Override
	public void addHeadPic(UserInfo userInfo) {
		headPicMapper.addHeadPic(userInfo);
		
	}

}
