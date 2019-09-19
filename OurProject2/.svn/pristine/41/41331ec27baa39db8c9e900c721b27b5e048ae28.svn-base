package com.neusoft.service.lkxservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.Tiezi;
import com.neusoft.dao.lkxdao.TieMapper;

@Service
public class TieServiceImpl implements TieService{

	@Autowired
	private TieMapper tieMapper;
	@Override
	public List<Tiezi> getAll(Tiezi tiezi) {
		
		List<Tiezi> list = tieMapper.getAll(tiezi);
		return list;
	}
	@Override
	public int findCount(Tiezi tiezi) {
		int count = tieMapper.findCount(tiezi);
		return count;
	}
	/*@Override
	public List<Tiezi> getTieziDetail(int id) {
		List<Tiezi> list = tieMapper.getTieziDetail(id);
		return list;
	}*/
	
	
	
}
