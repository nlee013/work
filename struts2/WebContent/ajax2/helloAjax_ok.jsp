<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	//문자만 바로 반환될 때 서버가 더딘 것을 출력으로 표시함(기다리는 느낌주기 위해서)
	//굳이 안써도 됌
	for(int i = 0; i < 300; i++){
		
		System.out.print("delay...");
	}
%>
Hello Ajax!!!
