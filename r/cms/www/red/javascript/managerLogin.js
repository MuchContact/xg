window.onload=function(){
	document.getElementById("focus").focus();
}


//�ı䰴ť������ʽ
function change(){
	document.getElementById("myButton").style.color="black";
	document.getElementById("myButton2").style.color="black";
}

function outchange(){
	document.getElementById("myButton").style.color="white";
	document.getElementById("myButton2").style.color="white";
}

//�ı�form�����л�

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