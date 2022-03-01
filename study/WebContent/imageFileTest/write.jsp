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
<title>파일 업로드</title>
</head>

<script type="text/javascript">

	function sendIt() {
		
		var f = document.myForm;
		
		if(!f.subject.value){
			alert("파일명을 입력 하세요!")
			f.subject.focus();
			return;
		}
		if(!f.upload.value){
			alert("파일을 선택 하세요!")
			f.upload.focus();
			return;
		}
		
		f.action = "<%=cp%>/image/write_ok.do";
		f.submit();
	}
</script>

<body>

<form action="" method="post" enctype="multipart/form-data" name="myForm">

제목: <input type="text" name="subject"/><br/> 
파일: <input type="file" name="upload" /><br/>
<input type="button" value=" 전송 " onclick="sendIt();"/>

</form>

<input type="button" value=" 리스트 " onclick="javascript:location.href='<%=cp %>/image/list.do';"/>

</body>
</html>