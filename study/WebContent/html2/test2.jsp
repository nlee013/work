<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	
	document.write("함수 외부...<br/>");

	function testFunc(){
		
		alert("함수 내부...<br/>");
	}
	
	//testFunc();//출력은 항상 순서대로
	
	
	

</script>

</head>
<body onload="testFunc();">
<!-- 정석은 써주지만 생략도 가능 -->

이 부분은 HTML 입니다.


</body>
</html>