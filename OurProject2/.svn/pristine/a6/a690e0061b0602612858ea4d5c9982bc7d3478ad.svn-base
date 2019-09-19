package com.neusoft.service.liuservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.bean.lybean.Column;
import com.neusoft.dao.liudao.ColumnMapper;
@Service
public class ColumnServiceImpl implements ColumnService{
	@Autowired
	private ColumnMapper columnMapper;
	@Override
	public List<Column> findColumn() {
		// TODO Auto-generated method stub
		List<Column> list =columnMapper.findColumn();
		return list;
	}

	
}
