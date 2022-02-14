<%@page import="com.naver.NaverDTO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DBConn"%>
<%@page import="com.naver.NaverDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

	String id = request.getParameter("id");
	
	Connection conn = DBConn.getConnection();
	NaverDAO dao = new NaverDAO(conn);

	NaverDTO dto = dao.getReadData(id);

	DBConn.close();

	if(dto == null){
	
	response.sendRedirect("list.jsp");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적처리 수정</title>

<script type="text/javascript">
	
	function sendIt() {
		
		var f = document.myForm;
		
		f.action = "<%=cp%>/naver3/update_ok.jsp";
		f.submit();
		
	}

</script>
<style type="text/css">

body{

	font-size: 10pt;	

}

td{

	font-size: 10pt;
}

.txtField {

	font-size: 10pt;
	border: 1px solid;
}

.btn{

	font-size: 10pt;
	background: #e6e6e6;
}
</style>

</head>
<body>

<br/><br/>

<table width="500" cellpadding="0" cellspacing="3" align="center" bgcolor="#e4e4e4">

<tr height="50">
	<td bgcolor="#ffffff" style="padding-left: 10px;">
	<b>가입처리 수정 화면</b>
	</td>
</tr>
</table>

<br/>

<form action="" method="post" name="myForm">

<table width="500" cellpadding="0" cellspacing="0" align="center">

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<!-- 아이디 칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">아이디</td>
	<td style="padding-left: 5px;">
	<input type="hidden" name="id" value="<%=dto.getId() %>" class="txtField"/>
	<%=dto.getId() %>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<!-- 이름 칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">비밀번호</td>
	<td style="padding-left: 5px;">
	<input type="hidden" name="pwd" value="<%=dto.getPwd() %>" class="txtField"/>
	<%=dto.getPwd() %>
	
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<!-- 국어칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">이름</td>
	<td style="padding-left: 5px;">
	<input type="text" name="name" value="<%=dto.getName() %>"
	size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<!-- 영어칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">연도</td>
	<td style="padding-left: 5px;">
	<input type="text" name="b_year" value="<%=dto.getB_year() %>"
	class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<!-- 수학칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">월</td>
	<td style="padding-left: 5px;">
	<input type="text" name="b_month" value="<%=dto.getB_month() %>"
	size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>


<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">일</td>
	<td style="padding-left: 5px;">
	<input type="text" name="b_day" value="<%=dto.getB_day() %>"
	size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">성별</td>
	<td style="padding-left: 5px;">
	<input type="text" name="gender" value="<%=dto.getGender() %>"
	size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">이메일</td>
	<td style="padding-left: 5px;">
	<input type="text" name="email" value="<%=dto.getEmail() %>"
	size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">국가번호</td>
	<td style="padding-left: 5px;">
	<input type="text" name="mobile" value="<%=dto.getMobile() %>"
	size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">전화번호</td>
	<td style="padding-left: 5px;">
	<input type="text" name="mobile2" value="<%=dto.getMobile2() %>"
	size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<tr height="35"> 
	
	<td align="center" colspan="2">
	
	<!-- 수정에서는 hidden이 반드시 쓰임 -->
	
	
	<input type="button" class="btn" value="수정완료" onclick="sendIt();"/>
	<!-- 여기 onclick에 위에 쓴 js를 써줘야됌 -->
	<input type="button" class="btn" value="수정취소"
	onclick="javascript:location.href='<%=cp%>/naver3/list.jsp';"/>
	</td>
</tr>

</table>


</form>


</body>
</html>