<%@ page contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("UTF-8");

	String userId = (String)session.getAttribute("userId");

	//session.setMaxInactiveInterval(5);//초단위
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>

<script type="text/javascript">

	function sendIt() {
		
		var f = document.myForm;
		
		if(!f.userId.value){
			
			alert("아이디 입력!!");
			f.userId.focus();
			return;
		}
		
		if(!f.userPwd.value){
			
			alert("비밀번호 입력!!");
			f.userPwd.focus();
			return;
		}
		
		f.submit();
	}


</script>



</head>
<body>

<table border="1" width="600" align="center" style="font-size:10pt;">

<tr height="20">
	<td colspan="2" align="right">
	|게시판|
	<%if(userId == null){ %>
		일정관리
		<%}else{%>
	<a href="schedule.jsp">일정관리</a>
	<% }%>|
	</td>
</tr>

<tr height="400">
	<td width="150" valign="top">
	<%if(userId == null){%>
	<form action="login_ok.jsp" method="post" name="myForm">
		아이디: <input type="text" name="userId" size="10"/><br/>
		비밀번호: <input type="password" name="userPwd" size="10"><br/>
		<input type="button" value="로그인" onclick="sendIt();"/>
	</form>
	<%}else{ %>
	<b><%=userId %></b>님 환영..<br/>
	<a href="logout.jsp">로그아웃</a>
	<%} %>
	</td>
	
	<td valign="middle" align="center">
	<%if(userId == null){ %>
		<b>로그인을 하면 새로운 세상이 보입니다!</b>
		<%}else{ %>
		<font color="red"><b>새로운 세상을 경험해보세요!</b></font>
		<%} %>
	</td>
</tr>
</table>

</body>
</html>