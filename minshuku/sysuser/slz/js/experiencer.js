	function check1(){
		if($("#introduce").val() == null || $("#introduce").val() ==""){
			alert("还有数据没填，不能进行下一步");
		}else{
			showView(10);
		}
	}
	function check2(){
		if($("#content").val() == null || $("#content").val() ==""){
			alert("还有数据没填，不能进行下一步");
		}else{
			showView(11);
		}
	}
	function check3(){
		if($("#place").val() == null || $("#place").val() ==""){
			alert("还有数据没填，不能进行下一步");
		}else{
			showView(12);
		}
	}
	function check4(){
		if($("#provide").val() == null || $("#provide").val() =="" || $("#title").val() == null || $("#title").val() == ""){
			alert("还有数据没填，不能进行下一步");
		}else{
			showView(13);
		}
	}
	function check5(){
		if($("#infile").val() == null || $("#infile").val() ==""){
			alert("还有数据没填，不能进行下一步");
		}else{
			submitAdd();
			showView(14);
		}
	}
	function showView(num){
		document.getElementById("content1").style.display="none";
		document.getElementById("content2").style.display="none";
		document.getElementById("content3").style.display="none";
		document.getElementById("content4").style.display="none";
		document.getElementById("content5").style.display="none";
		document.getElementById("content6").style.display="none";
		document.getElementById("content7").style.display="none";
		document.getElementById("content8").style.display="none";
		document.getElementById("content9").style.display="none";
		document.getElementById("content10").style.display="none";
		document.getElementById("content11").style.display="none";
		document.getElementById("content12").style.display="none";
		document.getElementById("content13").style.display="none";
		document.getElementById("content14").style.display="none";
		switch(num){
			case 1: document.getElementById("content1").style.display="block";
				break;
			case 2: document.getElementById("content2").style.display="block";
					document.getElementById("body").style.backgroundImage="none";
				break;
			case 3: document.getElementById("content3").style.display="block";
				break;
			case 4: document.getElementById("content4").style.display="block";
				break;
			case 5: document.getElementById("content5").style.display="block";
				break;
			case 6: document.getElementById("content6").style.display="block";
				break;
			case 7: document.getElementById("content7").style.display="block";
				break;
			case 8: document.getElementById("content8").style.display="block";
				break;
			case 9: document.getElementById("content9").style.display="block";
				break;
			case 10: document.getElementById("content10").style.display="block";
				break;
			case 11: document.getElementById("content11").style.display="block";
				break;
			case 12: document.getElementById("content12").style.display="block";
				break;
			case 13: document.getElementById("content13").style.display="block";
				break;
			case 14: document.getElementById("content14").style.display="block";
				break;
		}
	}

	
	function submitAdd(){
		var uid = window.localStorage.getItem("uid");
		var province = $("#province").val();
		var city = $("#city").val();
		var county = $("#county").val();
		var location = province+"-"+city+"-"+county;
		var language = $("#language option:checked").text();
		var type = $("#type option:checked").text();
		var introduce = $("#introduce").val();
		var content = $("#content").val();
		var place = $("#place").val();
		var provide = $("#provide").val();
		var title = $("#title").val();
		var img = $("#infile").val();
		$.ajax({
			type:"get",
			url:base_path+"/tiyandaren/add",
			dataType:'JSON',
			data:{
				location : location ,
				language : language ,
				type : type ,
				introduce : introduce ,
				content : content ,
				place : place ,
				provide :provide ,
				title : title ,
				img : img ,
				uid : uid 
			},
			success : function(data){
				if(data == 1){
					if(confirm("申请成功，请等待工作人员核实情况！请点击确定回到主页")){
						location.href = "../srl/newpriject/lvxin/index.html";
					}else{
						alert("您已提交成功，为您自动跳转至主页..");
						setTimeout("location.href = '../srl/newpriject/lvxin/index.html'",2000)
					}
				}else{
					alert("提交失败！");
				}
			},
			error : function(data){
				alert("系统繁忙！请稍后再试！");
			}
		});
		
	}


