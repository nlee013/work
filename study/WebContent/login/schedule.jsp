<%@ page contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("UTF-8");

	String id = session.getId();
	//java라는 web에 기본적으로 주어진 시간
	int sTime = session.getMaxInactiveInterval();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>schedule</title>
</head>
<body>

<h1>일정관리 화면</h1>

세션 ID: <%=id %><br/>
세션 유효시간: <%=sTime %>초<br/>
</body>
</html>