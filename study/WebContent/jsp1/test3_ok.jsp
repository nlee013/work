<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String[] major = request.getParameterValues("major");
	//해쉬코드가 나오므로 밑에서 코드로 해줘야됌
	/* String major = request.getParameter("major"); */
	String agree = request.getParameter("agree");
	String memo = request.getParameter("memo");
	
	memo = memo.replace("\r\n", "<br/>");
	
	
	String str = "";
	
	if(major!= null){
		
		for(String temp : major){
			str += temp + " ";
		}
		
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입-전공물어봄</title>
</head>
<body>

이름: <%=name %><br/>
아이디: <%=id %><br/>
비밀번호: <%=pwd %><br/>
성별: <%=gender %><br/>
전화번호: <%=tel1 %>-<%=tel2 %>-<%=tel3 %><br/>
전공: <%=str %><br/>
동의여부: <%=agree %><br/>
메모: <%=memo %><br/>




</body>
</html>