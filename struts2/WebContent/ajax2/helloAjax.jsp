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

<script type="text/javascript">
	
	var XMLHttpRequest;
	
	function ajaxRequest() {
		
		//IE(익스플로어)
		//XMLHttpRequest = new ActiveXObject("Msxml2.XMLHTTP");
		
		//Chrome
		XMLHttpRequest = new XMLHttpRequest();
		
		//post 방식 뒤에 parameter
		XMLHttpRequest.open("GET", "helloAjax_ok.jsp", true);
		XMLHttpRequest.onreadystatechange = viewMessage;//callback함수 사용하려고 만듦
		XMLHttpRequest.send(null);
		
	}
	
	//돌아왔을때
	function viewMessage(){
		
		//서버에서 응답이 왔을 때 실행되는 method
		//일반 텍스트/html이면 responseText로 받기
		var responseText = XMLHttpRequest.responseText;
		
		//xml로 받으면 var responseText = XMLHttpRequest.responseXML;
		
		//data 뿌려줄 위치 만들기
		var divE = document.getElementById("printDIV");
		
		//받은 걸 html로 출력
		divE.innerHTML = responseText;
		
	}
	

</script>
</head>
<body>

<h1>Hello AJAX</h1>
<input type="button" value="클릭"  onclick="ajaxRequest();"/>
<br/><br/>
<div id="printDIV" style="border: 1px solid red; width: 50%"></div>


</body>
</html>