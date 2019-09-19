package com.neusoft.service.lyservice;

import java.util.List;
import java.util.Map;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.Tiezi;
import com.neusoft.bean.lybean.TopicInfo;

public interface TieziService {

	// 获取所有帖子�ѯ��������
	List<Map<String,Object>> getTieziPageList(Tiezi tiezi);

	// 获取景色帖子
	List<Map<String,Object>> getTieziViewList(Tiezi tiezi);

	// 获取所有帖子数
	int TieziCount(Tiezi tiezi);

	// 获取景色帖子数
	int TieziViewCount(Tiezi tiezi);

	// 获取民宿列表
	List<Map<String,Object>> getHouseList(HouseInfo houseInfo);

	// 获取民宿总数
	int HouseCount(HouseInfo houseInfo);

	// 获取帖子详细信息(带评论)
	List<Map<String,Object>> getTieziDetailInfoWithContent(Tiezi tiezi);
	
	//获取帖子详细信息(带图片)
	List<Map<String,Object>> getTieziDetailInfoWithPic(Tiezi tiezi);

	//点赞功能
	int addKissNum(Tiezi tiezi);
		
	//获取点赞权限
	int LoveCount(Tiezi tiezi);

	// 获取评论总数
	int TopicCount(Tiezi tiezi);
	
	//获取评论人的信息
	List<Map<String,Object>> getTopicInfo(Tiezi tiezi);
	
	//发布评论
	int NewTopic(TopicInfo topicInfo);
	
	//增加浏览量
	int addView(Tiezi tiezi);
	
	//获取民宿列表(TOP10)
	List<Map<String, Object>> getHouseListTOP(HouseInfo houseInfo);

}
