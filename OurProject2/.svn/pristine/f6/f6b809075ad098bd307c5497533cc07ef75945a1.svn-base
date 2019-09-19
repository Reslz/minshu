package com.neusoft.util;

import java.net.URLEncoder;
import java.util.Random;

public class IndustrySMS
{
   private static String operation = "/industrySMS/sendSMS";

   private static String accountSid = Config.ACCOUNT_SID;
   private static String to = "+8615840466440";
   private static String smsContent = "您的手机注册验证码是：{"+runNumber().toString()+"}，如非本人操作，请忽略本信息！";

   /**
    * 验证码通知短信
    */
   public static void execute()
   {
      String tmpSmsContent = null;
       try{
         tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
       }catch(Exception e){
         
       }
       String url = Config.BASE_URL + operation;
       String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
           + HttpUtil.createCommonParam();

       // 提交请求
       String result = HttpUtil.post(url, body);
       System.out.println("result:" + System.lineSeparator() + result);
   }
   
   //生成四位数的验证码
   public static String runNumber() {
	   String str="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	   StringBuilder sb=new StringBuilder(4);
	   for(int i=0;i<4;i++)
	   {
	      char ch=str.charAt(new Random().nextInt(str.length()));
	      sb.append(ch);
	   }
	   System.out.println(sb.toString());
	   String code = sb.toString();
	   return code;
	}
   
}
