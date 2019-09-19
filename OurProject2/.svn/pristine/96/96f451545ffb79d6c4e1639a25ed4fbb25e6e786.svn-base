package com.neusoft.controller.lycontroller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.neusoft.util.UUIDGenerateUtil;

@RequestMapping("ly")
@Controller
@CrossOrigin(origins = "*", maxAge = 3600)
public class FatieController {

	// 通过Spring的autowired注解获取spring默认配置的request

	/***
	 * 保存文件
	 * 
	 * @param file
	 * @return
	 */
	private boolean saveFile(MultipartFile file, String path) {
		String uuid = UUIDGenerateUtil.getUUID();
		// 判断文件是否为空
		if (!file.isEmpty()) {
			try {
				File filepath = new File(path);
				if (!filepath.exists())
					filepath.mkdirs();
				// 文件保存路径
				String savePath = path + uuid + ".jpg";
				// 转存文件
				file.transferTo(new File(savePath));
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	@RequestMapping("springUpload")
	@ResponseBody
	public String filesUpload(@RequestParam("files") MultipartFile[] files) {
		String path = "E:/upload/";
		// 判断file数组不能为空并且长度大于0
		if (files != null && files.length > 0) {
			// 循环获取file数组中得文件
			for (int i = 0; i < files.length; i++) {
				MultipartFile file = files[i];
				// 保存文件
				saveFile(file, path);
			}
		}
		// 重定向
		return "";
	}
}
