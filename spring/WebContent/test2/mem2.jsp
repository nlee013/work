<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="<%=cp%>/test2/mem.action" method="post">

아이디: <input type="text" name="id"/><br/>
비밀번호: <input type="password" name="pwd"/><br/>
회원구분:
<select name="type">
	<c:forEach var="type" items="${types }">
		<option value="${type }">${type }</option>
	</c:forEach>
</select><br/>

<input type="submit" name="_target0" value="다시입력"/>
<input type="submit" name="_target2" value="다음단계"/>

</form>

</body>
</html>