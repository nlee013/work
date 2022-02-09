
<%@ page contentType="text/html; charset=UTF-8"%>

<%! 
/* method안에 method 있어서 오류난 것을 해제하기 위해서
별개로 외부에 보내기 위해서 느낌표 처리*/
	int a = 0;

	int sum(int x){
		
		int s = 0;
		
		for(int i = 1; i < x; i++){
			
			s += i;
		}
		return s;
	}
%>

<%
	int b = 0;
	a++;
	b++;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	a:<%=a %><br/>
	b:<%=b %><br/>
	합:<%=sum(100) %>

</body>
</html>