
<%@page import="com.naver2.Naver2DAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<jsp:useBean id="dto" class="com.naver2.Naver2DTO" scope="page"/>
<jsp:setProperty property="*" name="dto"/>


<%

Connection conn = DBConn.getConnection();
Naver2DAO dao = new Naver2DAO(conn);

int result = dao.insertData(dto);

DBConn.close();

if(result != 0)
	
response.sendRedirect("list.jsp");

%>
