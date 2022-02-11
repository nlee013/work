<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	//request.setCharacterEncoding("UTF-8");

	String eng = "test";
	String han = "테스트";
	
	String kor = URLEncoder.encode(han, "UTF-8");
	
//html를 지울수 있는 것은 jsp 확장자이므로. 위에jsp를 사용했기 때문에
//생략가능
%>

<jsp:forward page="for2.jsp">
	<jsp:param value="<%=eng %>" name="eng"/>
	<jsp:param value="<%=kor %>" name="kor"/>
</jsp:forward>
