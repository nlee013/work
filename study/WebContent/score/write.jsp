<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	//ContextPath()
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>write</title>

<script type="text/javascript">
	
	function sendIt() {
		
		var f = document.myForm;
		//f.action = "http://www.naver.com/study/score/write_ok.jsp";-도메인 있는 회사에서.
		//f.action = "http://loacalhost:8080/study/score/write_ok.jsp";-우리가 쓸때.
		f.action = "<%=cp%>/score/write_ok.jsp";
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
	<b>성적처리 입력화면</b>
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
	<input type="text" name="hak" size="10" maxlength="7" class="txtField"/>
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
	<input type="text" name="name" size="20" maxlength="10" class="txtField"/>
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
	<input type="text" name="kor" size="20" maxlength="3" class="txtField"/>
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
	<input type="text" name="eng" size="20" maxlength="3" class="txtField"/>
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
	<input type="text" name="mat" size="20" maxlength="3" class="txtField"/>
	</td>
</tr>

<tr height="2">
	<td colspan="2" bgcolor="#cccccc">
	</td>
</tr>

<tr height="35"> 
	<td align="center" colspan="2">
	<input type="button" class="btn" value="입력완료" onclick="sendIt();"/>
	<input type="reset" class="btn" value="다시입력"
	onclick="document.myForm.hak.focus();">
	<!-- 여기 onclick에 위에 쓴 js를 써줘야됌 -->
	<input type="button" class="btn" value="입력취소" onclick=""/>
	</td>
</tr>

</table>


</form>


</body>
</html>