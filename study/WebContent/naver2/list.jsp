<%@page import="java.util.List"%>
<%@page import="com.util.DBConn"%>
<%@page import="com.naver2.Naver2DTO"%>
<%@page import="com.naver2.Naver2DAO"%>


<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	Connection conn = DBConn.getConnection();
	
	Naver2DAO dao = new Naver2DAO(conn);
	
	List<Naver2DTO> lists = dao.getLists();
	
	DBConn.close();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입자 리스트</title>

<style type="text/css">

body {
	font-size: 10pt;
}

td {
	font-size: 10pt;
	}
	

.btn{
	font-size: 10pt;
	background: #e6e6e6
}

a {
	text-decoration: none;
	color: blue;	
	
}


</style>
</head>


<table width="700" cellpadding="0" cellspacing="3" align="center" bgcolor="#e4e4e4">
<tr height="50">
	<td bgcolor="#ffffff" style="padding-left: 10px;">
	<b>가입자 목록</b>
	</td>
</tr>
</table>
<br/>

<table width="650" cellpadding="0" cellspacing="3" align="center">
<tr height="35">
	<td align="right">
	<input type="button"class="btn" value="등록하기" onclick="javascript:location.href='<%=cp%>/naver2/naver2.jsp'"/>
	</td>
</tr>	
</table>


<table width="650" cellpadding="0" cellspacing="1" align="center" bgcolor="cccccc">
<tr height="30">
	<td align="center" bgcolor="#e6e6e6" width="60">아이디</td>
	<td align="center" bgcolor="#e6e6e6" width="60">비밀번호</td>
	<td align="center" bgcolor="#e6e6e6" width="100">이름</td>
	<td align="center" bgcolor="#e6e6e6" width="60">생년월일</td>
	<td align="center" bgcolor="#e6e6e6" width="60">성별</td>
	<td align="center" bgcolor="#e6e6e6" width="130">본인 확인 이메일</td>
	<td align="center" bgcolor="#e6e6e6" width="130">국가번호</td>
	<td align="center" bgcolor="#e6e6e6" width="130">전화번호</td>
</tr>



<%for(Naver2DTO dto : lists){ %>
<tr height="30">
	<td align="center" bgcolor="#fff"><%=dto.getId() %></td>
	<td align="center" bgcolor="#fff"><%=dto.getPwd() %></td>
	<td align="center" bgcolor="#fff"><%=dto.getName() %></td>
	<td align="center" bgcolor="#fff"><%=dto.getYear() %>/<%=dto.getMonth() %>/<%=dto.getDay() %></td>
	<td align="center" bgcolor="#fff"><%=dto.getGender() %></td>
	<td align="center" bgcolor="#fff"><%=dto.getEmail() %></td>
	<td align="center" bgcolor="#fff"><%=dto.getPhone1() %>-<%=dto.getPhone2() %></td>
	<td align="center" bgcolor="#fff">
	<a href="<%=cp%>/naver2/update.jsp?id=<%=dto.getId()%>">수정</a>
	<a href="<%=cp%>/naver2/delete_ok.jsp?id=<%=dto.getId()%>">삭제</a>
	</td>
</tr>
<%} %>
</table>

<body>

</body>
</html>