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

<script type="text/javascript">
	
	<%-- function sendIt() {
		
		var f = document.myForm;
		
		str = f.uplaod.value;
		
		if(!str){
			
			alert("파일을 첨부해주세요.");
			f.upload.focus();
			
			return;
		}
		
		f.action = "<%=cp%>/fileTest/upload.action";
		f.submit();
	} --%>
</script>

</head>
<body>

<form action="<%=cp%>/fileTest/upload.action" method="post" enctype="multipart/form-data">
 
 제목 : <input type="text" name="subject"/><br/>
 파일 : <input type="file" name="upload"/><br/>
 <input type="hidden" name="mode" value="save"/>
 <input type="submit" value="파일 업로드"
 onclick="javascript:location.href='<%=cp%>/fileTest/upload.action';"/> 
 <input type="submit" value="리스트"
 onclick="javascript:location.href='<%=cp%>/fileTest/list.action';"/>

</form>

</body>
</html>