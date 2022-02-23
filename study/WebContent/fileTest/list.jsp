<%@page import="com.fileTest.FileTestDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.util.MyUtil"%>
<%@page import="com.util.DBConn"%>
<%@page import="com.fileTest.FileTestDAO"%>
<%@page import="java.sql.Connection"%>
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
<title>파일 리스트</title>
</head>
<body>

<table width="500" align="center">

<tr>
	<td align="right" colspan="4">
		<input type="button" value="글쓰기" onclick="javascript:location.href='<%=cp%>/file/write.do';"/>
	</td>
</tr>

<tr>
	<td align="center" width="50">번호</td>
	<td align="left" width="150">제목</td>
	<td align="left" width="250">파일명</td>
	<td align="center" width="50">삭제</td>
</tr>

<c:forEach var="dto" items="${lists }">
<tr>
<td align="center" width="50">${dto.num }</td>
	<td align="left" width="150">${dto.subject }</td>
	<td align="left" width="250">${dto.originalFileName }</td>
	<td align="center" width="50">
		<a href="${deletePath }&num=${dto.num}">삭제</a>
	</td>
</tr>

</c:forEach>

</table>

<table width="560" border="0" cellpadding="0" cellspacing="0" bgcolor="#ffffff" style="margin: auto;">
<tr>
	<td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td>
</tr>

<tr>
	<td align="center" style="padding-bottom: 5px;">${pageIndexList }</td>
</tr>
</table>

</body>
</html>