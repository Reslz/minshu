var p=window.location.host;
if(window.localStorage.getItem("islogin")=="1"){
	
}else{
	alert("请先登录！！")
	window.location.href="http://"+p+"/minshuku/sysuser/srl/newpriject/lvxin/index.html";
}