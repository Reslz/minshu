package com.neusoft.util;

import java.util.UUID;
//生成唯一标识id
public class UUIDGenerateUtil {
	public static String getUUID(){
		//直接生成的ID中有“-”存在，如果不需要，可以使用replace()方法去掉
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}
