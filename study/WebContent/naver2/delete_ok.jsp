<%@page import="com.util.DBConn"%>
<%@page import="com.naver2.Naver2DAO"%>

<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String id = request.getParameter("id");
	
	Connection conn = DBConn.getConnection();
	Naver2DAO dao = new Naver2DAO(conn);
	
	int result = dao.deleteData(id);
	
	DBConn.close();
	response.sendRedirect("list.jsp");
	
	
%>
