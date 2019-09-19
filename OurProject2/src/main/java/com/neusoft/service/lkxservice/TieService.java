package com.neusoft.service.lkxservice;

import java.util.List;

import com.neusoft.bean.lybean.Tiezi;



public interface TieService {
	
	List<Tiezi> getAll(Tiezi tiezi);
	
	int findCount(Tiezi tiezi);
	
	/*List<Tiezi> getTieziDetail(int id);*/
}
