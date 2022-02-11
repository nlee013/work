<%@page import="com.calc.Calc"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	/* 굳이 안써도 된다!
	int su1 = Integer.parseInt(request.getParameter("su1"));
	int su2 = Integer.parseInt(request.getParameter("su2"));
	
	String oper = request.getParameter("oper"); */
	
	//자바스러운 코드므로 action으로 고칠예정
	/* Calc ob = new Calc();
	
	ob.setSu1(su1);
	ob.setSu2(su2);
	ob.setOper(oper);
	
	String str = ob.sum(); */
	
	//jsp:useBean id=""></jsp:useBean>는 Bean 객체 생성
	//아래코드 ob라는 이름으로 객체 생성해라
	
	/* scope로 page밖에서 인식 되지 않도록! 
	왜냐면 web은 여기저기 연결 되어 있으니까!
	다른곳에서 ob를 인식 못하게
	여기 페이지로 범위를 한정시킨다! */
	
	//정석
	//<jsp:setProperty property="su1" name="ob" value=" =su1
	
	/* jsp:useBean id="ob" class="com.calc.Calc" scope="page"/>
	<jsp:setProperty property="su1" name="ob"/>
	<jsp:setProperty property="su2" name="ob"/>
	<jsp:setProperty property="oper" name="ob"/> */
%>

<jsp:useBean id="ob" class="com.calc.Calc" scope="page"/>
<jsp:setProperty property="*" name="ob"/>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cal_ok</title>
</head>
<body>

결과: <%=ob.sum() %>

</body>
</html>