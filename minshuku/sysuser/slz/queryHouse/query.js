$(function(){
	$(".qename").focus(function(){
		$("#div").css("display","block");
	});
	
	$(".qename").blur(function(){
		$("#div").css("display","none");
	});
	
	$(".city").mousedown(function(){
		$("#province").attr("value",$(this).text())
	})
	

	
	var pageSize = 5;
	var currPage = 1;
	$("#submit").click(function(){
		window.location.href = "../../../slz/queryHouse/hotels-list.html";
		window.localStorage.setItem("province",$("#province").val());
		window.localStorage.setItem("city",$("#city").val());
	/*	$.ajax({
			type:"get",
			url:base_path+"/query/location",
			dataType:'JSON',
			data:{
				province:$("#province").val(),
				city:$("#city").val(),
				pageSize:pageSize,
				currPage:currPage
			},
			success:function(data){
				window.localStorage.setItem("houseList",JSON.stringify(data));
				window.localStorage.setItem("province",$("#province").val());
				window.localStorage.setItem("city",$("#city").val());
				window.location.href = "../../../slz/queryHouse/hotels-list.html";
			},
			error:function(data){
				alert("系统繁忙！");
			}
		});*/
	});
	
})
