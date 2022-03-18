<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<c:if test="${totalDataCount!=0 }">

<table width="700" border="0" cellpadding="0" cellspacing="0" style="margin: auto;">

<c:forEach var="dto" items="${lists }">
<tr>
	<td colspan="2" bgcolor="#e1cafc" height="1"></td>
</tr>

<tr height="30" bgcolor="#f3ebfc">
	<td width="300" style="padding-left: 10px;">
		<b>No ${dto.listNum }.&nbsp;&nbsp;${dto.name }
		(<a href="mailto:${dto.email }">${dto.email }</a>)</b>
	</td>
	<td width="300" align="right" style="padding-right: 10px;">
		${dto.created }&nbsp;
		<a href="javascript:deleteData('${dto.num }','${pageNum }');">삭제</a>
	</td>
</tr>
<tr>
	<td height="50" style="padding-left: 10px" colspan="2">
		${dto.content }
	</td>
</tr>
</c:forEach>

<tr>
	<td colspan="2" bgcolor="#e1cafc" height="2"></td>
</tr>
<tr height="30">
	<td align="center" colspan="2">${pageIndexList }</td>
</tr>

</table>

</c:if>





