<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	
	String result = "";
	
	for(int i = 1; i <=3; i ++){
		
		result += "{\"id\":\"" + i;
		result += "\",\"userId\":\"" + userId;
		result += "\",\"userPwd\":\"" + userPwd + "\"},";
			
		//JSON 형태 data
		//{
		//{"id:"1", "userId":"suzi", "userPwd":"123"},
		//{"id:"1", "userId":"suzi", "userPwd":"123"},
		//{"id:"1", "userId":"suzi", "userPwd":"123"},
		//}
	}
	
	//위에 마지막 값을 제거하기 때문에 ,(쉼표)가 사라짐
	result = result.substring(0, result.length()-1);
	result = "[" + result + "]";
	
	out.print(result);
	
	
%>
