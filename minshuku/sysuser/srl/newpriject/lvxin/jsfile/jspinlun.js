/*评论的ajax*/
		function page(){
				//当前页

		//定义页面大小
		var pagesize = 3;
		//起始索引 = (当前页-1)*页面大小
		var startindex = (currentpage-1)*pagesize;
		$.post(base_path+"/houseinfo/findpinluninfo",{houseid:houseid,startindex:startindex,pagesize:pagesize},function(data){
			var pinglun = "";
			totalpage=(data%pagesize==0)?(data/pagesize):(Math.floor(data/pagesize)+1);
			for(var i =0;i<data.length;i++){
				pinglun +="<tr class='active'><td width = '100' style='text-align: center;'>"+data[i].username+"</td><td>"+data[i].pinglun+"</td></tr>";
			}
			var li_str = "";
			li_str +="<li id = 'prevkey'><a href='#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>";
			li_str +="<li id='nextkey'><a href='#' aria-label='Next' ><span aria-hidden='true'>&raquo;</span></a></li>";
			$("#pinglun1").html(pinglun);
			$("#page1").html(li_str);
		
			$("#prevkey").click(function(){
					if(currentpage <= 1){
						currentpage = 1;
					}else{
						currentpage = currentpage - 1;
					}
					page();
				});
			$("#nextkey").click(function(){
					if(currentpage >= totalpage){
						currentpage = totalpage;
					}else{
						currentpage = currentpage + 1;
					}page();
				});	
		})
			
		}
	