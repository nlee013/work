<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//ex1에서 받아온 데이터 session에 올리기
	String userName = request.getParameter("userName");
	String userBirth = request.getParameter("userBirth");
	
	/* 
	1번 방식
	session.setAttribute("userName", userName);
	session.setAttribute("userBirth", userBirth);
	*/
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex2</title>
</head>
<body>

<!-- 1대1 방식 post -->
<form action="ex3.jsp" method="post">

아&nbsp;이&nbsp;디&nbsp;: <input type="text" name="userId" size="10"/><br/>
비밀번호: <input type="text" name="userPwd" size="10"/><br/>

<!-- 3번째 방식 hidden.굉장히 많이 사용!!! -->
<input type="hidden" name="userName" value=<%=userName %>>
<input type="hidden" name="userBirth" value=<%=userBirth %>>

<input type="submit" value="가입"/><br/>
<!-- submit은 script 안만들때 -->
</form>

</body>
</html>