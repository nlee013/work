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

<script type="text/javascript" src="<%=cp%>/data/js/ajaxUtil.js"></script>
<script type="text/javascript">

function sendIt(){
	
	
	//var xmlHttp = new XMLHTTPRequest();
	xmlHttp = createXMLHttpRequest(); //xmlhttprequest의 객체
	//onreadystatechange: xmlhttprequest의 신호라고 생각하면 됌
	//만드는 순간 0을 반환
	
	var query = "";
	var su1 = document.getElementById("su1").value;
	var su2 = document.getElementById("su2").value;
	var oper = document.getElementById("oper").value;
	
	//Get방식 데이터 전송
	query = "test1_ok.jsp?su1=" + su1 + "&su2=" + su2 + "&oper=" + oper;

	xmlHttp.onreadystatechange = callback;

	//오픈에서 get방식으로 query로 보내는 순간은 신호는 1
	xmlHttp.open("GET",query, true);
	
	//send로 보내면 신호가 2로 바뀜
	xmlHttp.send(null);

	//데이터가 보내는 순간은 신호 3
}

//무조건 돌아올 때 무조건 실행됌
function callback(){
	
	//일처리가 끝나면 신호 4로 반환
	if(xmlHttp.readyState==4){
		if(xmlHttp.status==200){
			
			printData();
			
		}
	}
	
}

function printData(){
	
	var result = xmlHttp.responseXML.getElementsByTagName("root")[0];
	
	//출력을 객체화 형식
	var out = document.getElementById("resultDIV");
	
	out.innerHTML = "";
	out.style.display = "";
	
	var value = result.firstChild.nodeValue; //첫번째 sum
	
	out.innerHTML = value;
}
</script>


	

</head>
<body>

<input type="text" id="su1"/>
<select id="oper">
	<option value="hap">더하기</option>
	<option value="sub">빼기</option>
	<option value="mul">곱하기</option>
	<option value="div">나누기</option>
</select>
<input type="text" id="su2"/>
<input type="button" value=" = " onclick="sendIt();"/>

<div id="resultDIV" style="display: none;"></div>

</body>
</html>