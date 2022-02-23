<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	//쿠키 c4 를 하나 더 만들겠다 = c4를 한번 덮어씌우겠다
	Cookie c4 = new Cookie("tel", null);
	response.addCookie(c4);
	
	Cookie[] c = request.getCookies();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	if(c != null){
		
		for(Cookie ck : c){
			
			out.print("쿠키이름: ");
			out.print(ck.getName());
			out.print(", 쿠키값:");
			out.print(ck.getValue() + "<br/>");
			
		}
	}
%>
</body>
</html>