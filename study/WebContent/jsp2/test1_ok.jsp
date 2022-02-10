<%@ page contentType="text/html; charset=UTF-8"%>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	
	//test1_s.jsp로 가기전 실행 시킬 것 작성
	//request에 추가 요청을 넣어줄 때 아래 명령어 사용
	request.setAttribute("msg", "반갑다?ㅎ");//msg는 변수명.
	
	
	response.sendRedirect("test1_s.jsp");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test1_ok</title>
</head>
<body>

이름:<%=name %>

</body>
</html>