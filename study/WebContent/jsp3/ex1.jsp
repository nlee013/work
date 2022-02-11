<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex1</title>
</head>
<body>

<form action="ex2.jsp" method="post">

이름: <input type="text" name="userName" size="10"/><br/>
생일: <input type="text" name="userBirth" size="10"/><br/>
<input type="submit" value="다음"/><br/>

<!-- submit은 script 안만들때 -->
</form>

</body>
</html>