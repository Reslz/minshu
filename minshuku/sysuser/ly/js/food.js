$(document).ready(function(){
	//定义页面大小
	var pagesize = 6;
	//当前页
	var currentpage = 1;
	//总页数
	var totalpage = 1;
		
	initlist();
	//初始化页数
	initPage();
		
	function initlist(){
		//起始索引 = (当前页-1)*页面大小
		var startindex = (currentpage-1)*pagesize;
		//截取id
		/*var fenleiid = getQueryString("ly/getTieziViewList?id=2");*/
		
		$.post(base_path+"ly/getTieziViewList",
			{
				startindex:startindex,
				pagesize:pagesize,
				fenleiid:3
			},
			function(data){
			console.log(data);	
			var str = "";
			for(var i=0;i<data.length;i++){
				str +="<div class='col-md-4 col-sm-6 col-xs-12 b_packages'>"+
							"<div class='v_place_img' ><a href='detail.html?tieziid="+data[i].tieziid+"'><img src='"+data[i].img+"' style='width: 350px; height: 262.5px;' alt='"+data[i].fenlei+"' title='"+data[i].fenlei+"' /></a><div class='_1hkka7' style='background-color:#FFFFFF'><span class='_8l0rv2k'>"+data[i].fenlei+"</span></div></div>"+
	                        "<div class='b_pack rows'>"+
	                            "<div class='col-md-8 col-sm-8'>"+
	                                "<h4><a href='tour-details.html'>重庆<span class='v_pl_name'>"+data[i].title+"</span></a></h4></div>"+	                                
	                            "<div class='col-md-4 col-sm-4 pack_icon'>"+
	                          	"<div class='to-ho-hotel-con-5'><ul><li><a href='#'><i class='fa fa-eye' aria-hidden='true'></i>"+data[i].view_num+"</a></li>"+
								"<li><a href='#'><i class='fa fa-thumbs-o-up' aria-hidden='true'></i>"+data[i].kiss_num+"</a></li></ul></div>"+
	                            "</div></div></div>";                             
			}
			$("#tb1").html(str);			
		});
/*		function getQueryString(name) {
			var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
			var r = window.location.search.substr(1).match(reg);
			if (r != null) {
			return unescape(r[2]);
			}
			return null;
		}*/
	}
	
	function initPage(){
		
/*		var fenleiid = getUrlParam("ly/getTieziViewCount?id=2");
		console.log(fenleiid);*/
		
		$.post(base_path+"ly/getTieziViewCount",
			{
				fenleiid:3
			},
			function(data){
				console.log(data);
				totalpage=(data%pagesize==0)?(data/pagesize):(Math.floor(data/pagesize)+1)
				var li_str = "";					
				li_str += 	"<li id='pagePrevLi'><a href='#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>"
				
				for(var i = 1;i <= totalpage;i++){
					if(currentpage == i){
						li_str += "<li  class='active' id='pageNumLi' data-page='"+i+"'><a href='#'>"+i+"</a></li>";
					}else{					
						li_str += "<li id='pageNumLi' data-page='"+i+"'><a href='#'>"+i+"</a></li>";
					}
				}
							
				li_str +=	"<li id='pageNextLi'><a href='#' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>"
				
				$("#first").html(li_str);
				
				$("li[id='pageNumLi']").click(function(){
					var page = $(this).attr("data-page");
					currentpage = parseInt(page);
					console.log(currentpage);										
					initlist();	
					initPage();
				});
				
				$("li[id='pagePrevLi']").click(function(){
					if(currentpage <= 1){
						currentpage = 1;
					}else{
						currentpage = currentpage - 1;
					}
					console.log(currentpage);
					initlist();	
					initPage();
				});
				
				$("li[id='pageNextLi']").click(function(){
					if(currentpage >= totalpage){
						currentpage = totalpage;
					}else{
						currentpage = currentpage + 1;
					}
					console.log(currentpage);
					initlist();	
					initPage();
				});
				
			});
			
/*			function getUrlParam(name) {
	            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
	            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
	            if (r != null) return unescape(r[2]); 
	            return null; //返回参数值
       		 }*/
			
		}
	 
	
});