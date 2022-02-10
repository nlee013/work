<%@ page contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("UTF-8");

	//suzi값 같은 data(내용)만 삭제됌
	session.removeAttribute("userId");//suzi data 삭제
	//suzi 자체 삭제
	session.invalidate();//suzi라는 변수값 자체가 삭제

	response.sendRedirect("login.jsp");
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>logout</title>
</head>
<body>

</body>
</html>