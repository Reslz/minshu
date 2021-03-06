package com.neusoft.service.lyservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.Tiezi;
import com.neusoft.bean.lybean.TopicInfo;
import com.neusoft.dao.lydao.TieziMapper;

@Service("tieziService")
public class TieziServiceImpl implements TieziService {

	@Autowired
	private TieziMapper tieziMapper;

	@Override
	public List<Map<String,Object>> getTieziPageList(Tiezi tiezi) {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list = tieziMapper.getTieziPageList(tiezi);
		return list;
	}

	@Override
	public List<Map<String,Object>> getTieziViewList(Tiezi tiezi) {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list = tieziMapper.getTieziViewList(tiezi);
		return list;
	}

	@Override
	public int TieziCount(Tiezi tiezi) {
		// TODO Auto-generated method stub
		return tieziMapper.TieziCount(tiezi);
	}

	@Override
	public int TieziViewCount(Tiezi tiezi) {
		// TODO Auto-generated method stub
		return tieziMapper.TieziViewCount(tiezi);
	}

	@Override
	public List<Map<String,Object>> getHouseList(HouseInfo houseInfo) {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list = tieziMapper.getHouseList(houseInfo);
		return list;
	}

	@Override
	public int HouseCount(HouseInfo houseInfo) {
		// TODO Auto-generated method stub
		return tieziMapper.HouseCount(houseInfo);
	}

	@Override
	public List<Map<String,Object>> getTieziDetailInfoWithContent(Tiezi tiezi) {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list = tieziMapper.getTieziDetailInfoWithContent(tiezi);
		return list;
	}

	@Override
	public List<Map<String,Object>> getTieziDetailInfoWithPic(Tiezi tiezi) {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list = tieziMapper.getTieziDetailInfoWithPic(tiezi);
		return list;
	}

	@Override
	public int addKissNum(Tiezi tiezi) {
		// TODO Auto-generated method stub
		return tieziMapper.addKissNum(tiezi);
	}
	
	@Override
	public int LoveCount(Tiezi tiezi) {
		// TODO Auto-generated method stub
		return tieziMapper.LoveCount(tiezi);
	}
	

	@Override
	public int TopicCount(Tiezi tiezi) {
		// TODO Auto-generated method stub
		return tieziMapper.TopicCount(tiezi);
	}

	@Override
	public List<Map<String, Object>> getTopicInfo(Tiezi tiezi) {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list = tieziMapper.getTopicInfo(tiezi);
		return list;
	}

	@Override
	public int NewTopic(TopicInfo topicInfo) {
		// TODO Auto-generated method stub
		return tieziMapper.NewTopic(topicInfo);
	}

	@Override
	public int addView(Tiezi tiezi) {
		// TODO Auto-generated method stub
		return tieziMapper.addView(tiezi);
	}

	@Override
	public List<Map<String, Object>> getHouseListTOP(HouseInfo houseInfo) {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list = tieziMapper.getHouseListTOP(houseInfo);
		return list;
	}


}
