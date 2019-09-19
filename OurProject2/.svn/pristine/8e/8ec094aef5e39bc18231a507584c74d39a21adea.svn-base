package com.neusoft.controller.bycontroller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.neusoft.util.UUIDGenerateUtil;

@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
public class TestImgController {
	
		@RequestMapping("/")
		@ResponseBody
		public String addFile(HttpServletRequest request,HttpServletResponse response) throws Exception {		
			String file = request.getParameter("file");
			List<MultipartFile> fileList = new ArrayList<>();
			//创建一个通用的多部分解析器 
			CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
			//判断 request 是否有文件上传,即多部分请求  
	        if(multipartResolver.isMultipart(request)){
	        	//转换成多部分request    
	           // MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
	        	MultipartResolver resolver = new CommonsMultipartResolver(request.getSession().getServletContext());
	            MultipartHttpServletRequest multipartRequest = resolver.resolveMultipart(request);
	            //取得request中的所有文件名  
	            fileList = multipartRequest.getFiles("file");
	            if (fileList == null || fileList.size() <= 0) {
					throw new Exception("上传文件失败");
				}
	            System.out.println("lkllklkl");
	        }
			return "1";
		}
		
}
