
	$(document).ready(function(){
	//定义页面大小
	var pagesize = 3;
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
		
		$.post(base_path+"getAll",
			{
				startindex:startindex,
				pagesize:pagesize,
				//id与实体类的id对应，实体类再將值传递给#{id}
				id:4
			},
			function(data){
				console.log(data);
			var str = "";
			for(var i=0;i<data.length;i++){
				str +="<div class='col-md-4 col-sm-6 col-xs-12 b_packages' >"+                     
                       "<div class='v_place_img'><a href='detail1.html?tieziid="+data[i].imgInfo.tieziid+"'><img src='"+data[i].imgInfo.img+"' style='width: 350px; height: 262.5px;' alt='"+data[i].tieziType.fenlei+"' title='"+data[i].tieziType.fenlei+"' /></a></div>"+
                        "<div class='b_pack rows'>"+
                            "<div class='col-md-6 col-sm-6'>"+
                                "<h4><a href='detail1.html?tieziid="+data[i].imgInfo.tieziid+"'>重庆<span class='v_pl_name'>"+data[i].title+"</span>"+
                                "</span></a></h4></div>"+
                            "<div class='col-md-3 col-sm-3 pack_icon'>"+
                            "</br>"+
                            ' <a href="detail1.html"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> '+ data[i].kiss_num+'</a>'+
                                " <a href='tour-details.html'><i class='fa fa-eye' aria-hidden='true'></i> "+ data[i].view_num+"</a>"+
                            "</div></div></div>";                           
			}
			$("#tb1").html(str);			
			
		});
	}
	
	function initPage(){
		
		/*var fenleiid = getQueryString("getCount?id=4");
		console.log(fenleiid);*/
		$.post(base_path+"getCount?id=4",
			{
				
			},
			function(data){
				totalpage=(data%pagesize==0)?(data/pagesize):(data/pagesize+1)
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
				
				//取到当前页
				$("li[id='pageNumLi']").click(function(){
					var page = $(this).attr("data-page");
					currentpage = parseInt(page);									
					initlist();	
					initPage();
				});
				//上一页
				$("li[id='pagePrevLi']").click(function(){
					if(currentpage <= 1){
						currentpage = 1;
					}else{
						currentpage = currentpage - 1;
					}
					initlist();	
					initPage();
				});
				//下一页
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
			
			//正则表达式
			function getQueryString(name) {
			var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
			var r = window.location.search.substr(1).match(reg);
			if (r != null) {
			return unescape(r[2]);
			}
			return null;
		}
	}
	
});
