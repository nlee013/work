<%@page import="java.sql.Connection"%>
<%@page import="com.guest.GuestDAO"%>
<%@page import="com.util.DBConn"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	int num = Integer.parseInt(request.getParameter("num"));
	
	String pageNum = request.getParameter("pageNum");
	
	Connection conn = DBConn.getConnection();
	GuestDAO dao = new GuestDAO(conn);
	
	dao.deleteData(num);
	
	DBConn.close();
	
	//response.sendRedirect("guest.jsp?pageNum=" + pageNum);
	response.sendRedirect(cp + "/guest/guest.jsp?pageNum=" + pageNum);
%>
