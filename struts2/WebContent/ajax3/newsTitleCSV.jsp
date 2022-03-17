<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

.news{
	font-size: 10pt;
	display: block;
	/* 숨기는건 none; 화면  */
	margin: 0 auto;
	background: #d9fcf6;;
	color: #876c58;
	border: 1px dashed black;
	width: 50%;
}

.newsError{
	font-size: 10pt;
	display: block;
	margin: 0 auto;
	background: orange;
	color: red;
	border: 1px dashed black;
	width: 50%;
}

</style>

<script type="text/javascript" src="<%=cp %>/data/js/httpRequest.js"></script>
<script type="text/javascript">

	function newsTitle() {
		
		//hideNewsDiv();
		
					//경로, data, callback함수, 방식
		sendRequest("newsTitleCSV_ok.jsp",null,displayNewsTitle,"GET");
		
		setTimeout("newsTitle()", 3000);
	}
	
	function displayNewsTitle() {
		
		if(httpRequest.readyState==4){
			if(httpRequest.status==200){
				
				var csvStr = httpRequest.responseText;
				//alert(csvStr);
				
				var csvArray = csvStr.split("|");
				
				var countStr = csvArray[0];
				//alert(countStr);
				
				if(countStr==0){
					alert("뉴스가 없습니다");
					return;
					
				}
				
				var csvData = csvArray[1];
				//alert(csvData);
				
				var newsTitleArray = csvData.split("*");
				//alert(newsTitleArray.length);
				
				var html = "";
				
				html += "<ol>";
				
				for(var i=0;i<newsTitleArray.length;i++){
					
					var newsTitle = newsTitleArray[i];
					
					html += "<li>" + newsTitle + "</li>";
					
				}
				
				html += "</ol>";
				
				//alert(html);
				
				var newsDiv = document.getElementById("newsDiv");
				
				newsDiv.innerHTML = html;
				
			}else{ //200이 아니면
				
				var newsDiv = document.getElementById("newsDiv");
			
				newsDiv.innerHTML = httpRequest.status + ":에러발생";
				
				newsDiv.setAttribute("class","newsError");
				
			}
		}
	}
	
	function showNewsDiv() { //뉴스보임
		var newsDiv = document.getElementById("newsDiv");
		newsDiv.style.display = "block";
	}
	
	function hideNewsDiv() { //뉴스숨김
		newsDiv.style.display = "none";
	}
	
	window.onload = function() {
		newsTitle();
		//자동으로 실행되게 끔 여기에 호출
	}

</script>
</head>
<body>

<h2>Headline News</h2>
<hr/>
<br/>

<!-- onmouseover="showNewsDiv();" onmouseout="hideNewsDiv();" -->
<div style="display:block; border:3px solid; width:50%; margin:0 auto;">뉴스 보기</div>

<div id="newsDiv" class="news">
</div>

</body>
</html>