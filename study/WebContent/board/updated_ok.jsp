<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.board.BoardDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>

<jsp:useBean id="dto" class="com.board.BoardDTO" scope="page"/>
<jsp:setProperty property="*" name="dto"/>

<%

	String pageNum = request.getParameter("pageNum");
//검색--------------------------------------------
	String searchKey = request.getParameter("searchKey");
	String searchValue = request.getParameter("searchValue");
	
	String pass = request.getParameter("pwd");
	
	//한글 get방식일때는 오류..
	if(searchValue!=null){
		
		if(request.getMethod().equalsIgnoreCase("GET")){
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
	}else{ //확인차
		searchKey = "subject";
		searchValue = "";
	}
	//검색--------------------------------------------

	Connection conn = DBConn.getConnection();
	BoardDAO dao = new BoardDAO(conn);
	
	dao.updateData(dto);
	
	
	//검색---------------------------------------------------
	String param = "";
	if(!searchValue.equals("")){
		
		param = "&searchKey=" + searchKey;
		param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
	}
	//검색----------------------------------------------------

	DBConn.close();

	response.sendRedirect("list.jsp?pageNum=" + pageNum + param);
	


%>
