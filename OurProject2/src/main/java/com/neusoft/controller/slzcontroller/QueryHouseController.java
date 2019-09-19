package com.neusoft.controller.slzcontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.neusoft.bean.lybean.HouseInfo;
import com.neusoft.bean.lybean.LocationInfo;
import com.neusoft.bean.lybean.QueryHouseResult;
import com.neusoft.service.slzservice.QueryHouseService;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/query")
public class QueryHouseController {
	
	@Autowired
	private QueryHouseService qhService ;
	
	@RequestMapping("/location")
	public List<HouseInfo> getLocation(LocationInfo locationInfo){
		List<Integer> array = qhService.getLocation(locationInfo);
		QueryHouseResult qh = new QueryHouseResult();
		qh.setPageSize(locationInfo.getPageSize());
		qh.setCurrPage(locationInfo.getCurrPage());
		qh.setStartIndex();
		qh.setLocationid(array);
		List<HouseInfo> houseList = qhService.houseList(qh);
		for (int i = 0 ; i < houseList.size() ; i ++ ) {
			ArrayList<Integer> list = new ArrayList<>();
			String sheshiid = houseList.get(i).getSheshiid();
			String[] sheshiidarry = sheshiid.split(",");
			for (String str : sheshiidarry) {
				Integer a = Integer.parseInt(str);
				list.add(a);
			}
			List<String> sheShi = qhService.getSheShi(list);
			StringBuffer strb = new StringBuffer("");
			for (String string : sheShi) {
				strb.append(string+" ");
			}
			houseList.get(i).setSheshi(strb.toString());
		}
        return houseList;
	};
	
	@RequestMapping("/getTotalCounts")
	public Integer getTotalCounts(LocationInfo locationInfo){
		List<Integer> array = qhService.getLocation(locationInfo);
		for (Integer integer : array) {
			System.out.println(integer);
		}
		QueryHouseResult qh = new QueryHouseResult();
		qh.setLocationid(array);
		qh.setCity(locationInfo.getCity());
		qh.setProvince(locationInfo.getProvince());
		Integer totalCounts = qhService.getTotalCounts(qh);
		return totalCounts;
	};
	
	
}
