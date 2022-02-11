<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//Scope: page, request, session, application
	
	int n = 0;
	String count = (String)application.getAttribute("count");
	
	if(count!= null){
		
		n = Integer.parseInt(count);
	}
	n++;
	
	//이 set에서 위인 get으로 들어감.application이라는 scope를 통해서.
	application.setAttribute("count", Integer.toString(n));
	
	//실제 접속 위치
	String realPath = application.getRealPath("/");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application</title>
</head>
<body>
총 접속자 수:<%=n %><br/>
웹 서버 실제 경로:<%=realPath %><br/>
</body>
</html>