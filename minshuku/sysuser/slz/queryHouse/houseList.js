/*var houseList = JSON.parse(window.localStorage.getItem("houseList"));*/

$(function(){
	
	
	initlist(currPage);
	initpage();
	
})	
	
	
	var pageSize = 5;
	var currPage = 1;
	function initlist(currPage){
		var province = window.localStorage.getItem("province");
		var city = window.localStorage.getItem("city");
		$("#h1_id").html(province+city+"房源信息 ");
		$.get(base_path+"/query/location",{province:province,city:city,pageSize:pageSize,currPage:currPage},function(data){
			window.localStorage.setItem("houseList",JSON.stringify(data));
			var houseList = JSON.parse(window.localStorage.getItem("houseList"));
			var inner = "" ;
			for(var i = 0 ; i < houseList.length ; i++){
				
				/*$.post(base_path+"/query/sheshi?a="+new Date(),{houseid:houseList[i].houseid},function(data){
					console.log(data);
					window.localStorage.setItem("sheshi",JSON.stringify(data));
				});
				var sheshi = JSON.parse(window.localStorage.getItem("sheshi"));
				var sheshi = window.localStorage.getItem("sheshi");*/
				inner += "<div class='hot-page2-alp-r-list'>";
				inner += "<div class='col-md-4 hot-page2-alp-r-list-re-sp'>";
				inner += "<a href='#'>";
				inner += "<!-- <div class='hotel-list-score'>4.5</div>-->";
				inner += "<div class='hot-page2-hli-1'>";
				inner += "<img src='"+houseList[i].img+"' alt='' style='height:250px;width:300px'>";
				inner += "</div>";
				inner += "<div class='hom-hot-av-tic hom-hot-av-tic-list'>";
				inner += "推荐房源："+(i+1);
				inner += "</div>";
				inner += "</a>";
				inner += "</div>";
				inner += "<div class='col-md-6'>";
				inner += "<div class=''>";
				inner += "<a href='#'><h3>"+houseList[i].housename+"</h3></a>";
				inner += "<ul>";
				inner += "<li>"+houseList[i].province+houseList[i].city+houseList[i].county+houseList[i].floor+"</li>";
				inner += "<li><b>联系电话:</b>"
				if(houseList[i].tel == null || houseList[i].tel == ""){
					inner += "房主还未留联系电话";
				}else{
					inner += houseList[i].tel;
				}
				inner += "</li>";
				inner += "</ul>";
				inner += "<p><b>提供设施:</b>"+houseList[i].sheshi
				/*for (var j = 0 ; j < sheshi.length ; j++) {
					inner += "&nbsp;"+sheshi[j];
				}*/
				inner += "</p>";
				inner += "</div>";
				inner += "</div>";
				inner += "<div class='col-md-2'>";
				inner += "<div class='hot-page2-alp-ri-p3'>";
				inner += "<div class='hot-page2-alp-r-hot-page-rat'>优惠"+Math.round((1-(houseList[i].newprice/houseList[i].oldprice))*100)+"%</div>";
				inner += "<span class='hot-list-p3-1'>每晚价格</span>";
				inner += "<span class='hot-list-p3-2'>￥"+houseList[i].newprice+"</span>";
				inner += "<span class='hot-list-p3-3'>￥"+houseList[i].oldprice+"</span>";
				inner += "<span class='hot-list-p3-4'>";
				inner += "<a href='#' class='hot-page2-alp-quot-btn' id='set_houseid' onclick='setid()' data-id='"+houseList[i].houseid+"'>立即预订</a>";
				inner += "</span>";
				inner += "</div>";
				inner += "</div>";
				inner += "</div>";
			}
			$("#lists").html(inner );
			
			
			
			
			
			
			
			
			
			
			
			
			$("a[id = 'set_houseid']").click(function(){
				var houseid = $(this).attr("data-id");
				window.localStorage.setItem("houseid",houseid);
				window.location.href="../../srl/newpriject/lvxin/cpts_1320_byx/room.html";
			});
		});
	}
	
	
	
	function initpage(province,city){
		var province = window.localStorage.getItem("province");
		var city = window.localStorage.getItem("city");
		$.get(base_path+"/query/getTotalCounts",{province:province,city:city},function(data){
			totalpage=(data%pageSize==0)?(data/pageSize):(Math.floor(data/pageSize)+1)
			
			var li_str="";
			li_str+="<li id='pagePrevLi'>";
			li_str+="<a href='#' aria-label='Previous'>";
			li_str+="<span aria-hidden='true'>&laquo;</span>";
			li_str+="</a>";
			li_str+="</li>";
			
			for(var i=1;i<=totalpage;i++){
				if(currPage==i){
					li_str+="<li id='pageNumLi' data-page='"+i+"'><a style='background-color:#d4d4d4' href='#'>"+i+"</a></li>";
				}else{
			    	li_str+="<li id='pageNumLi' data-page='"+i+"'><a href='#'>"+i+"</a></li>";
			   	}
			}
	
			li_str+="<li id='pageNextLi'>";
			li_str+="<a href='#' aria-label='Next'>";
			li_str+="<span aria-hidden='true'>&raquo;</span>";
			li_str+="</a>";
			li_str+="</li>";
			
			$(".pagination").html(li_str);
			
			$("li[id='pageNumLi']").click(function(){
				var a = $(this).attr("data-page")
				currPage= a;
				initlist(currPage);
				initpage();
			});
			$("li[id='pagePrevLi']").click(function(){
				
				currPage=currPage-1;
				if(currPage==0){
					currPage=1;
				}
				initlist(currPage);
				initpage();
			});
			
			$("li[id='pageNextLi']").click(function(){
				currPage = parseInt(currPage);
				currPage= (currPage+1);
				alert(currPage);
				if(currPage==(totalpage+1)){
					currPage=totalpage;
				}
				initlist(currPage);
				initpage();
			});		
		});
	}

