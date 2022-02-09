<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	
	function sendIt(){
		
		var f = document.myForm;
		
		if(!f.dan.value){
			
			alert("단 입력 하세요!");
			fan.dan.focus();
			return;
		}
		f.action = "gugudan_ok.jsp";//아래 있는 action 없애도 있어도 무상관
		f.submit();//무조건 action 찾아감//정석임.
		//매번 스크립트에 쓰기 힘들어서 밑에서 submit으로 처음에 사용했음
	}
</script>

</head>
<body>

<form action="gugudan_ok.jsp" method="post" name="myForm">
단 입력:<input type="text" name="dan"/><br/>
<input type="button" value="결과" onclick="sendIt();"/><br/>
<!-- submit은 무조건 1로 감. 그래서 button으로 한다(스크립트 사용시에) -->
</form>

</body>
</html>