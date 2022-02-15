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
	Connection conn = DBConn.getConnection();
	BoardDAO dao = new BoardDAO(conn);
	
	int maxNum = dao.getMaxNume();
	
	dto.setNum(maxNum + 1);
	dto.setIpAddr(request.getRemoteAddr());
	
	//int result = dao.insertData(dto);//이제 이렇게 여기서 안씀
	
	//query insert 실행
	dao.insertData(dto);
	
	DBConn.close();
	
	response.sendRedirect("list.jsp");
	
	//if문이 있는 것도 아니고 밑에 있는 hmtl까지 코드가 실행안되므로 밑은 필요없으니 삭제.
%>
