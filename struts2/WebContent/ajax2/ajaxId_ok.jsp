<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String userId = request.getParameter("userId");
	
	String str = "";
	
	if(!userId.equals("")){
		
		for(int i = 0; i < 5000; i++){
			
		
			//if(userId.startsWith("suzi")){//suzi뒤에 어떠한 문자를 써도 유효하게 나옴
			if(userId.equals("suzi")){
				str = userId + "는 유효한 아이디 입니다.";
				
			}else{
			
				str = userId + "는 유효하지 않은 아이디 입니다.";
			}
		
		}
	}
%>

<%=str%>