<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">

	var XMLHttpRequest;

	function getXMLHttpRequest(){
	
		if(window.ActiveXObject){//IE
		
			try {//IE5.0이후
				
			XMLHttpRequest = new ActiveXObject("Msxml2.XMLHTTP");
			
			} catch (e) {//IE5.0이전
				
			XMLHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			
			}
		
		}else{//NON-IE
		
			XMLHttpRequest = new XMLHttpRequest();
		
		}
	
	}
	
	function ajaxRequestGet() {
		
		//form을 사용하지 않으면 id로 사용
		//form을 사용하면 name하고
		//id 일때는 getElementById 쓰고 form 쓰면 이거로
		var data = document.myForm.greeting.value;
		
		if(data == ""){
			
			alert("data 입력!");
			document.myForm.greeting.focus();
			
			return;
		}
		
		//Get 방식은 ?사용//공간에만 바뀌고 실제 주소창은 redirect되지 않기 때문에 안바뀜
		XMLHttpRequest.open("GET", "ajaxGetPost_ok.jsp?greeting=" + data, true);
		
		XMLHttpRequest.onreadystatechange = viewMessage;
		
		XMLHttpRequest.send(null);
	}

	function ajaxRequestPost() {

		var data = document.myForm.greeting.value;
		
		if(data == ""){
			
			alert("data 입력!");
			document.myForm.greeting.focus();
			
			return;
		}
		
		XMLHttpRequest.open("POST", "ajaxGetPost_ok.jsp", true);
		
		//form에서 enctype을 안써도 자동으로 실행되지만 여기서는 직접 써줘야됌
		XMLHttpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		XMLHttpRequest.onreadystatechange = viewMessage;
		
		XMLHttpRequest.send("greeting=" + data);
	}
		
		
	function viewMessage() {

		var divE = document.getElementById("printDIV");

		if (XMLHttpRequest.readyState == 1 || XMLHttpRequest.readyState == 2
				|| XMLHttpRequest.readyState == 3) {

			divE.innerHTML = "<img src= './image/processing.gif' width='50' height='50'/>";

		} else if (XMLHttpRequest.readyState == 4) {

			divE.innerHTML = XMLHttpRequest.responseText;
		}
	}
	
	window.onload = function(){
		getXMLHttpRequest();
	}

</script>
<body>

<h1>AjaxGetPost</h1>

<form action="" name="myForm">

<input type="text" name="greeting"/>
<input type="button" value="Get전송" onclick="ajaxRequestGet();"/>
<input type="button" value="Post전송" onclick="ajaxRequestPost();"/>
</form>
<br/><br/>

<div id="printDIV" style="border: 1px solid blue; width: 50%"></div>

</body>
</html>