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

<script type="text/javascript" src="<%=cp%>/data/js/jquery-3.1.1.min.js"></script>

<script type="text/javascript">
/* 	
	window.onload = function() {
		
		alert("Welcome!!");
	}

	window.onload = function() {
		
		alert("Real Welcome!!");
	}
	
	//순수한 js로 하면 real welcome만 보임
	//jquery로 하면 둘다 보임
*/

$(document).ready(function(){
	
	alert("Welcome!!");
});


$(document).ready(function(){
	
	alert("Real Welcome!!");
});

$(function () {
	
	$(document.body).css("background", "pink");
});

$(function() {
	
	$("<div><p>JQUERY</p></div>").appendTo("body");

});


</script>
</head>
<body>

</body>
</html>