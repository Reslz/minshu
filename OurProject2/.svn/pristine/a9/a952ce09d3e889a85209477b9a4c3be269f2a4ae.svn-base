package com.neusoft.controller.bycontroller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.neusoft.bean.lybean.UserInfo;
import com.neusoft.service.byservice.HeadPicService;
import com.neusoft.util.UUIDGenerateUtil;

@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class HeadPicController {
	@Autowired
	private HeadPicService headPicService;
	
	//上传文件
		@RequestMapping("/getImg")
		@ResponseBody
		public String getImg(UserInfo userInfo,MultipartFile file,HttpServletRequest request,HttpSession session){
			String file2 = request.getParameter("file");
			String uid1 = request.getParameter("uid");
			int uid = Integer.parseInt(uid1);
			//System.out.println("uid"+uid);
			String path= request.getRealPath("/images/upload");//文件保存路径
					
			String name = file.getOriginalFilename();//文件原本的名字，容易重复
			File file1 = new File(path,UUIDGenerateUtil.getUUID()+name.substring(name.indexOf(".")));//生成32位时间戳
			String uuname = UUIDGenerateUtil.getUUID()+name.substring(name.indexOf("."));
			try {
				file.transferTo(file1);//连内容一起，转存文件
			} catch (IOException e) {					
				e.printStackTrace();
			}
			//System.out.println(path);
			//System.out.println(uuname);
						
			userInfo.setUid(uid);
			userInfo.setImg(uuname);
			headPicService.addHeadPic(userInfo);	
			return "1";
		}
}
