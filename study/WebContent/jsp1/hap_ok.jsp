<%@ page contentType="text/html; charset=UTF-8"%>

<%
/* hap.jsp 주소를 리퀘스트로 가서 톰켓서버로 가서 리스폰스에 담아서 hap_ok.jsp나한테 돌려준것? */

	request.setCharacterEncoding("UTF-8");//한글 깨지지 않게.

	//window->preference->web->jsp->editor->templates->4.01 <%request.setCharacterEncoding("UTF-8");%꺽새 추가하기
	String s1 = request.getParameter("su1");
	String s2 = request.getParameter("su2");
	//넘어오는 모든 데이터는 String
	String name = request.getParameter("name");

	int sum = 0;
	
	int su1 = Integer.parseInt(s1);
	int su2 = Integer.parseInt(s2);
	
	sum = su1 + su2;

	/* 주소-- 파일이름?변수값&변수값.여기서 변수값까지 다 보여지면 get, set
	<form action="hap_ok.jsp" method="get">-중요하지 않은 data 일 때 사용
	Get 방식은 프로그래머가 많이 사용.
	
	보통은 post로 사용
	<form action="hap_ok.jsp" method="post">
	*/
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
결과:<%=su1 %>+<%=su2 %>=<%=sum %><br/>
이름:<%=name %><br/>
</body>
</html>