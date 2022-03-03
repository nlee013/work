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
<title>홈술닷컴 </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    


<link rel="stylesheet" type="text/css" href="<%=cp%>/bbs/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/bbs/css/created.css"/>


    
        <!-- AceCounter Log Gathering Script End -->


<script type="text/javascript">

	function sendIt(){
		
		var f = document.myForm;
		
		str = f.bor_subject.value;
		str = str.trim();
		if(!str){
			alert("\n제목을 입력하세요.");
			f.bor_subject.focus();
			return;
		}
		f.bor_subject.value = str;
		
		str = f.bor_id.value;
		str = str.trim();
		if(!str){
			alert("\n아이디를 입력하세요.");
			f.bor_id.focus();
			return;
		}		
		
		f.bor_id.value = str;
		
		str = f.bor_content.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.bor_content.focus();
			return;
		}
		f.bor_content.value = str;
		
		f.action = "<%=cp%>/homesool/one_to_one2.com";
		f.submit();
		
	}

</script>

</head>

<body class="body-main body-index pc">



<div id="bbs">
	
	
	<form action="" method="post" name="myForm">
	<div id="bbsCreated">
		
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
				<dd>
				<input type="text" name="bor_subject" size="60" 
				maxlength="100" class="boxTF"/>
				</dd>
			</dl>		
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>아이디</dt>
				<dd>
				<input type="text" name="bor_id" size="35" 
				maxlength="20" class="boxTF"
				value="${dto.bor_id }"/>
				</dd>
			</dl>		
		</div>
		
		
		<div id="bbsCreated_content">
			<dl>
				<dt>내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
				<dd>
				<textarea rows="12" cols="63" name="bor_content"
				class="boxTA"></textarea>
				</dd>
			</dl>
		</div>
	
	</div>
	
	<div id="bbsCreated_footer">
	
		<input type="hidden" >
		<input type="button" value=" 등록하기 " class="btn2" onclick="sendIt();"/>
		<input type="reset" value=" 다시입력 " class="btn2" 
		onclick="document.myForm.bor_subject.focus();"/>
		<input type="button" value=" 작성취소 " class="btn2" 
		onclick="javascript:location.href='<%=cp%>/homesool/mypage.com';"/>
	</div>
	
	</form>

</div>


</body>


</body>
</html>
