<%@page import="com.score.ScoreDTO"%>
<%@page import="com.score.ScoreDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String hak = request.getParameter("hak");
	
	Connection conn = DBConn.getConnection();
	ScoreDAO dao = new ScoreDAO(conn);
	
	ScoreDTO dto = dao.getReadData(hak);
	
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
		
		f.action = "<%=cp%>/jumsu/update_ok.do";
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
	<b>성적처리 수정 화면</b>
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

<!-- 학번 칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">학번</td>
	<td style="padding-left: 5px;">
	<%=dto.getHak() %>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<!-- 이름 칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">이름</td>
	<td style="padding-left: 5px;">
	<%=dto.getName() %>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<!-- 국어칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">국어</td>
	<td style="padding-left: 5px;">
	<input type="text" name="kor" value="<%=dto.getKor() %>"
	size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<!-- 영어칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">영어</td>
	<td style="padding-left: 5px;">
	<input type="text" name="eng" value="<%=dto.getEng() %>"
	size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<!-- 수학칸 -->
<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">수학</td>
	<td style="padding-left: 5px;">
	<input type="text" name="mat" value="<%=dto.getMat() %>"
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
	<input type="hidden" name="name" value="${dto.name}"/>
	<input type="hidden" name="hak" value="<%=dto.getHak()%>"/>	
	<input type="hidden" name="tot" value="<%=dto.getTot()%>"/>	
	<input type="hidden" name="ave" value="<%=dto.getAve()%>"/>	
	<input type="hidden" name="rank" value="<%=dto.getRank()%>"/>
	
	<input type="button" class="btn" value="수정완료" onclick="sendIt();"/>
	<!-- 여기 onclick에 위에 쓴 js를 써줘야됌 -->
	<input type="button" class="btn" value="수정취소"
	onclick="javascript:location.href='<%=cp%>/sung/list.jsp';"/>
	</td>
</tr>

</table>


</form>


</body>
</html>