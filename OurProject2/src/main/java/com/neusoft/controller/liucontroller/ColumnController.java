package com.neusoft.controller.liucontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.bean.lybean.Column;
import com.neusoft.bean.lybean.Location;
import com.neusoft.service.liuservice.ColumnService;
@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class ColumnController {
	@Autowired
	private ColumnService columnService;
	@RequestMapping("findColumn")
	@ResponseBody
	public List<Column> findColumn() {
		List<Column> list = columnService.findColumn();
		return list;
	}
	
	
	
	
}
