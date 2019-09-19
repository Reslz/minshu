package com.neusoft.controller.lkxcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.bean.lybean.Tiezi;
import com.neusoft.service.lkxservice.TieService;

@Controller
@CrossOrigin(origins = "*",maxAge = 3600)
public class TieController {
	
	@Autowired
	private TieService tieService;
	
	//获取分类的各种帖子
	@RequestMapping("getAll")
	@ResponseBody
	public List<Tiezi> getAll(Tiezi tiezi) {
		List<Tiezi> list = tieService.getAll(tiezi);
		for (Tiezi tieZi : list) {
			System.out.println(tieZi);
		}
		return list;
	}
	
	//获取帖子条数
	@RequestMapping("getCount")
	@ResponseBody
	public int getCount(Tiezi tiezi){
		int count = tieService.findCount(tiezi);
		return count;
	}
	
	
	//获取帖子详细信息
	/*@RequestMapping("getTieziDetail")
	@ResponseBody
	public List<Tiezi> getTieziDetail(int id){
		List<Tiezi> list = tieService.getTieziDetail(id);
		return list;
	}
	*/
}
