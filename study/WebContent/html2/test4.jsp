<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function idpwCheck() {	
	
		var f = document.myForm;//함축
		
		//최상위 document
		if(!f.id.value){
			alert("아이디를 입력하세요!");	
			f.id.focus();
			return;
		}
		
		if(!f.id.value){
			alert("비밀번호를 입력하세요!");	
			f.pwd.focus();
			return;
		}
		
		alert("로그인 성공!!");
		
	}

</script>

</head>
<body>

<form action="" name="myForm">

<table style="font-size: 10pt; font-family: 돋음;" cellpadding="3">
<tr>
	<td><strong>아이디</strong></td>
	<td><input type="text" style="width: 100px; height:  22px;" name="id"/></td>
	<td></td>
</tr>

<tr>
	<td><b>비밀번호</b></td>
	<td>
	<input type="password" style="width:100px; height: 22px;" name="pwd"/>
	</td>
</tr>	

<tr>
	<td>
	<a href = "javascript:idpwCheck();">
	<img src ="../html1/image/btn_login.gif">
	</a>
	</td>
</tr>

<tr>
	<td colspan="3" align="center">
	<input type="checkbox">아이디 저장
	<input type="checkbox" checked="checked">보안접속
	</td>
</tr>

<tr height="1">
	<td colspan="3" bgcolor="#dad6d7"></td>
</tr>

</table>

<a href="javascript:idpwCheck();">로그인</a>
<input type="button" value="로그인" onclick="idpwCheck();"/>
<button onclick="idpwCheck();">로그인</button>
</form>

</body>
</html>