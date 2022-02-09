<%@ page contentType="text/html; charset=UTF-8"%>

<%
	int a = 10, b = 5, c; /* 지시어 */
	c = a + b;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	합: <%=a %>+<%=b %>=<%=c %><br/>
	
<!-- out.write("\r\n");이미 내장 매체 -->

<!-- Servlet의 내장객체를 상용해서 출력(나중에 배울 서블렛과 좀 다름) -->
<%
	out.print("합" + a + "+" + b + "=" + c + "<br/>");

	String str = String.format("합: %d + %d = %d<br/>", a, b, c);
	out.print(str);
%>
</body>
</html>