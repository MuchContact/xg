//改变注册和登陆样式
function changeForm(e){
	
	var rf = document.getElementById("registerForm").style;
	var lf = document.getElementById("loginForm").style;
	var span1 = document.getElementById("span1").style;
	var span2 = document.getElementById("span2").style;
	
	if(e.id=="span1"){
		rf.display="none";
		span2.boxShadow="0px 0px 10px gray";
		span2.backgroundColor="#F1F9F0";
		
		lf.display="block";
		span1.boxShadow="none";
		span1.backgroundColor="white";
	}else if(e.id=="span2"){
		rf.display="block";
		span2.boxShadow="none";
		span2.backgroundColor="white";
		
		lf.display="none";
		span1.boxShadow="0px 0px 10px gray";
		span1.backgroundColor="#F1F9F0";
	}
	
}
//改变button字体颜色(移到上面)
function changecolor(e){
	var reg = document.getElementById("register").style;
	var log = document.getElementById("login").style;
	
	if(e.id=="register"){
		reg.color="green";
	}else if(e.id=="login"){
		log.color="black";
	}
}

function changecolor2(e){
	var reg = document.getElementById("register").style;
	var log = document.getElementById("login").style;
	if(e.id=="register"){
		reg.color="#5C7A5C";
	}else if(e.id=="login"){
		log.color="white";
	}
}