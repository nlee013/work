<%@ page contentType="text/html; charset=UTF-8"%>

<% 
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	request.setAttribute("msg", "반갑다잉~");
	
	%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test1_for</title>
</head>
<body>
이름:<%=name %>

<jsp:forward page="test1_s.jsp"/>

</body>
</html>