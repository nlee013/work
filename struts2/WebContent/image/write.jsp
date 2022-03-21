<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 외부 스타일 시트 불러오기  -->
<link rel="stylesheet" href="/imagedata/style.css">

<title>파일 올리기</title>


</head>
<body>

<br/><br/>
<table width="600" border="2" cellpadding="0" cellspacing="0"
bordercolor="#d6d4a6" align="center">

<tr height="40">
	<td style="padding-left: 20px;">
	<b>이미지 게시판</b>
	</td>
	<c:if test="${!empty sessionScope.MemberDTO.userId}">
	<td style="border: none; text-align: right;">${sessionScope.MemberDTO.userId}님 반갑습니다.</td>
	</c:if>
</tr>	
</table>

<form action="<%=cp %>/img/write.action" method="post" name="myForm" enctype="multipart/form-data">

<c:if test="${!empty sessionScope.MemberDTO.userId}">
<table width="600" border="0" cellspacing="0" align="center">
<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>	
	<tr>
		<td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
		제&nbsp;&nbsp;&nbsp;목
		</td>
		<td width="460" style="padding-left: 10px;">
		<input type="text" name="subject" size="35" maxlength="20" class="boxTF"/>
		</td>
	</tr>
	
	<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>	
	
	<tr>
		<td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
		파&nbsp;&nbsp;&nbsp;일
		</td>
		<td width="460" style="padding-left: 10px;">
		<input type="file" name="upload" maxlength="100" size="48" class="boxTF"/>
		</td>
	</tr>		
	
	<tr><td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td></tr>	
	</table>

	<input type="hidden" name="mode" value="abc">
	
	
	<table width="600" border="0" cellpadding="0" cellspacing="3" align="center">
	<tr align="center">
		<td height="40">
		<input type="submit" value="등록하기" class="btn1"/>	
		<input type="reset" value="다시입력" class="btn1"
		onclick="document.myForm.subject.focus();"/>
		<input type="reset" value="작성취소" class="btn1"
		onclick="javascript:location.href='<%=cp%>/img/list.action';">

</table>
</c:if>

<c:if test="${empty sessionScope.MemberDTO.userId}">
<center>
<table align="center" style="margin: 0">
	<tr align="center">
	<td>
	로그인 후에 게시물을 등록할 수 있습니다<br/>
	<input type="button" value="로그인" class="btn2" onclick="javascript:location.href='<%=cp%>/img/login.action';"/>
	</td>
</tr>
</table>
</center>
</c:if>

</form>
</body>
</html>