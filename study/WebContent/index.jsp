<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나영나영</title>

</head>
<body>

<h1>JSP 첫 페이지 - 반장</h1>
1) <a href="<%=cp%>/score/list.jsp">JSP 성적처리</a><br/>
2) <a href="<%=cp%>/board/list.jsp">JSP 게시판</a><br/>
3) <a href="<%=cp%>/guest/guest.jsp">JSP 방명록</a><br/>
4) <a href="<%=cp%>/sboard/list.do">Servlet 게시판</a><br/>
5) <a href="<%=cp%>/jumsu/list.do">Servlet 성적처리</a><br/>
6) <a href="<%=cp%>/join/created.do">Servlet 회원가입</a><br/>
</body>
</html>