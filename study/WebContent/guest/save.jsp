<%@page import="java.sql.Connection"%>
<%@page import="com.guest.GuestDAO"%>
<%@page import="com.guest.GuestDTO"%>
<%@page import="com.util.DBConn"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<jsp:useBean id="dto" class="com.guest.GuestDTO" scope="page"/>
<jsp:setProperty property="*" name="dto"/>

<%

	Connection conn = DBConn.getConnection();
	GuestDAO dao = new GuestDAO(conn);
	
	int maxNum = dao.getMaxNum();
	
	dto.setNum(maxNum + 1);
	dto.setIpAddr(request.getRemoteAddr());
	
	int result = dao.insertData(dto);
	
	DBConn.close();
	
	response.sendRedirect(cp + "/guest/guest.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>