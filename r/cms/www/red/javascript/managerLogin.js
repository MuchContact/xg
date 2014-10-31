window.onload=function(){
	document.getElementById("focus").focus();
}


//改变按钮文字样式
function change(){
	document.getElementById("myButton").style.color="black";
	document.getElementById("myButton2").style.color="black";
}

function outchange(){
	document.getElementById("myButton").style.color="white";
	document.getElementById("myButton2").style.color="white";
}

//改变form表单，切换

function changeForm(e){
	var login = document.getElementById("login").style;
	var find = document.getElementById("find").style;
	if(e.id=="loginForm"){
		login.display="none";
		find.display="block";
		document.getElementById("focus2").focus();
	}else if(e.id=="findPassForm"){
		find.display = "none";
		login.display = "block";
		document.getElementById("focus").focus();
	}
}