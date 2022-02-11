<%@page import="com.score.ScoreDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DBConn"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<jsp:useBean id="dto" class="com.score.ScoreDTO" scope="page"/>
<jsp:setProperty property="*" name="dto"/>

<%
	//데이터 넘겨주는 코딩은 js
	
	Connection conn = DBConn.getConnection();
	
	ScoreDAO dao = new ScoreDAO(conn);//overloading
	
	int result = dao.insertData(dto);
	
	DBConn.close();
	
	if(result != 0){
		
		response.sendRedirect("list.jsp");
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>wrie_ok</title>
</head>
<body>
<!-- 전에는 그냥 출력했지만 지금은 DB 사용함 -->


</body>
</html>