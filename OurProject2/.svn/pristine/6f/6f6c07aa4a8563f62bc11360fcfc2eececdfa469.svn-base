package com.neusoft.service.srlservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.Bookinginfo;
import com.neusoft.bean.lybean.PictureInfo;
import com.neusoft.dao.srldao.CityInfoMapper;

@Service
public class CityInfoServiceImpl implements CityInfoService{
@Autowired
private CityInfoMapper citymapper;


	@Override
	public List<PictureInfo> findpictureinfo() {
		
		return citymapper.findpictureinfo();
	}


	@Override
	public HouseInfo findhouseinfo(HouseInfo houseInfo) {
		HouseInfo houseInfo1 = citymapper.findhouseinfo(houseInfo);
		return houseInfo1;
	}


	@Override
	public void submintbookinfo(Bookinginfo order) {
		citymapper.submintbookinfo(order);
		
	}


	






	
	
	
	
}
