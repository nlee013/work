<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	/*확인용
	String protocol = request.getProtocol();
	System.out.print(protocol);
	*/
	
	//client에 ajax cash를 삭제하는 명령어
	//ajax는 client에서 처리함. 그런데 ajax를 계속 실행하면 cash가 계속 쌓이고
	//새로 생성되는 cash와 충돌이 일어남
	//필수적으로 써줌
	
	if(request.getProtocol().equals("HTTP/1.1")){
		
		response.setHeader("Cache-Control", "no-cache");
		
	}
%>
<%

	String greeting = request.getParameter("greeting");

	for(int i = 0; i< 35000; i++){
		
		System.out.print("처리중...");
		
	}
%>

<%="Server" + greeting %>
