$(document).ready(function(){
	
	
	//当前页
	var currentpage = 1;
	//总页数
	var totalpage = 1;
		
	initlist();
	//初始化页数
	initPage();
	
	initHotleList();
	
	initHotlePage();
	
	function initlist(){
		//定义页面大小
		var pagesize = 6;
		//起始索引 = (当前页-1)*页面大小
		var startindex = (currentpage-1)*pagesize;
		
		$.post(base_path+"ly/getTieziPageList",
			{
				startindex:startindex,
				pagesize:pagesize
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
		
	}
	
	function initPage(){
		//定义页面大小
		var pagesize = 6;
		
		$.post(base_path+"ly/getTieziCount",
			{
				
			},
			function(data){
				
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
					initlist();	
					initPage();
				});
				
				$("li[id='pagePrevLi']").click(function(){
					if(currentpage <= 1){
						currentpage = 1;
					}else{
						currentpage = currentpage - 1;
					}					
					initlist();	
					initPage();
				});
				
				$("li[id='pageNextLi']").click(function(){
					if(currentpage >= totalpage){
						currentpage = totalpage;
					}else{
						currentpage = currentpage + 1;
					}
					initlist();	
					initPage();					
				});
				
			});
	}
	
	function initHotleList(){
		//定义页面大小
		var pagesize = 3;
		//起始索引 = (当前页-1)*页面大小
		var startindex = (currentpage-1)*pagesize;
		
		$.post(base_path+"ly/getHouseInfoList",
			{
				startindex:startindex,
				pagesize:pagesize
			},
			function(data){
				console.log(data);
				var str = "";
				for(var i=0;i<data.length;i++){
					
					str += 	"<div class='col-md-4'><div class='to-ho-hotel-con'><div class='to-ho-hotel-con-1'>"+
							"<div class='hot-page2-hli-3'><img src='img/hci1.png' alt=''></div>"+                               	
							"<img src='"+data[i].img+"' style='width: 348px; height: 232px;' alt=''></div><div class='to-ho-hotel-con-23'>"+
							"<div class='to-ho-hotel-con-2'><div class='_qhtkbey'>"+data[i].miaoshu+"</div></div>"+
							"<div class='to-ho-hotel-con-3'><ul><li>城市："+data[i].city+"</li>"+
							"<li><span class='ho-hot-pri-dis'>"+data[i].oldprice+"</span><span class='ho-hot-pri'>￥"+data[i].newprice+"</span></li></ul></div>"+
							"<div class='to-ho-hotel-con-4'><a href='booking1.html' class='link-btn hom-hot-book-btn'>预定</a><a id = 'lookbtn' data-id = '" + data[i].houseid + "' class='link-btn hom-hot-view-btn'>详情</a>"+
							"</div></div></div></div>"                       
			}
			$("#btn2").html(str);
			$("a[id='lookbtn']").click(function() {
				var id = $(this).attr("data-id");
				window.localStorage.setItem("houseid", id);
				window.location.href = '../../sysuser/srl/newpriject/lvxin/cpts_1320_byx/room.html';
			})
		});
	}
	
	function initHotlePage(){
		//定义页面大小
		var pagesize = 3;
		
		$.post(base_path+"ly/getHouseCount",
			{
				
			},
			function(data){
				
				totalpage=(data%pagesize==0)?(data/pagesize):(Math.floor(data/pagesize)+1)
				var li_str = "";					
				li_str += 	"<li id='pageHousePrevLi'><a href='#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>"
				
				for(var i = 1;i <= totalpage;i++){
					if(currentpage == i){
						li_str += "<li  class='active' id='pageHouseNumLi' data-housepage='"+i+"'><a href='#'>"+i+"</a></li>";
					}else{					
						li_str += "<li id='pageHouseNumLi' data-housepage='"+i+"'><a href='#'>"+i+"</a></li>";
					}
				}
							
				li_str +=	"<li id='pageHouseNextLi'><a href='#' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>"
				
				$("#second").html(li_str);
				
				$("li[id='pageHouseNumLi']").click(function(){
					var page = $(this).attr("data-housepage");
					currentpage = parseInt(page);
					console.log(currentpage);										
					initHotleList();	
					initHotlePage();
				});
				
				$("li[id='pageHousePrevLi']").click(function(){
					if(currentpage <= 1){
						currentpage = 1;
					}else{
						currentpage = currentpage - 1;
					}
					/*console.log(currentpage);*/
					initHotleList();	
					initHotlePage();
				});
				
				$("li[id='pageHouseNextLi']").click(function(){
					if(currentpage >= totalpage){
						currentpage = totalpage;
					}else{
						currentpage = currentpage + 1;
					}
					/*console.log(currentpage);*/
					initHotleList();	
					initHotlePage();
				});
				
			});
	}
	
	
	
	
});