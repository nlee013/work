<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게 시 판</title>

<link rel="stylesheet" type="text/css" href="<%=cp %>/board/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp %>/board/css/created.css"/>

<script type="text/javascript" src="<%=cp %>/board/js/util.js"></script>
<script type="text/javascript">

	function sendIt() {
		
		// name="subject"에서 띄어쓰기 된 공백을 없애서 다시 subject에 넣는다
		var f = document.myForm;
		
		str = f.subject.value;
		str = str.trim(); // css에 있는 양식 가져온 것
		
		if(!str){
			alert("\n제목을 입력하세요.")
			f.subject.focus();
			return;		
		}
		f.subject.value = str;
		
		// name = "name" trim
		str = f.name.value;
		str = str.trim(); // css에 있는 양식 가져온 것
		
		if(!str){
			alert("\n이름을 입력하세요.")
			f.name.focus();
			return;		
		}
		f.name.value = str;
		
		// 이름 한글인지 확인
		/* if(!isValidKorean(str)){ // str이 한글이 아니면! util에 있는 함수 : true or false 반환
			alert("\n이름을 정확히 입력하세요.");
			f.name.focus();
			return;
		}
		f.name.value = str; */
		
		// 이메일이 맞는지 확인
		if(f.email.value){
			if(!isValidEmail(f.email.value)){
				alert("\n 정상적인 E-Mail을 입력하세요.");
				f.email.focus();
				return;
			}
			
		}
		
		// 내용 trim
		str = f.content.value;
		str = str.trim(); // css에 있는 양식 가져온 것
		
		if(!str){
			alert("\n내용을 입력하세요.")
			f.content.focus();
			return;		
		}
		f.content.value = str;
		
		// password trim
		str = f.pwd.value;
		str = str.trim(); // css에 있는 양식 가져온 것
		
		if(!str){
			alert("\n비밀번호를 입력하세요.")
			f.pwd.focus();
			return;		
		}
		f.pwd.value = str;
		
		
		f.action = "<%=cp%>/board.do";
		f.submit();		
	}




</script>

</head>
<body>

<div id="bbs"> <!-- css에 있는 created에 bbs클래스 -->
	<div id = "bbs_title">
		게 시 판 (Struts1)
	</div>

	<form action="" method="post" name="myForm">
	<div id="bbsCreated">
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
				<dd>
				<input type="text" name="subject" value="${dto.subject }" size="60" maxlength="100" class="boxTF"/>
				</dd>
			</dl>
		</div>
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>작성자</dt>
				<dd>
				<input type="text" name="name" value="${dto.name }" size="35" maxlength="20" class="boxTF"/>
				</dd>
			</dl>
		</div>
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>E-Mail</dt>
				<dd>
				<input type="text" name="email" value="${dto.email }" size="35" maxlength="50" class="boxTF"/>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content">
			<dl>
				<dt>내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
				<dd>
				<textarea rows="12" cols="63" name="content" class="boxTA">${dto.content }</textarea>
				</dd>
			</dl>
		</div>
		<div class="bbsCreated_noLine">
			<dl>
				<dt>패스워드</dt>
				<dd>
				<input type="password" name="pwd" value="${dto.pwd }" size="35" maxlength="7" class="boxTF"/>
				&nbsp;(게시물 수정 및 삭제시 필요)
				</dd>
			</dl>
		</div>
	</div>
	
	<div id="bbsCreated_footer">
	
	<input type="hidden" name="method" value="updated_ok"/>
	
	<input type="hidden" name="num" value="${dto.num }">
	<input type="hidden" name="pageNum" value="${pageNum }">
	<input type="hidden" name="searchKey" value="${searchKey }">
	<input type="hidden" name="searchValue" value="${searchValue }">
	
	<input type="button" value=" 수정하기 " class="btn2" onclick="sendIt();"/>
	<input type="button" value=" 수정취소 " class="btn2" 
	onclick="javascript:location.href='<%=cp%>/board.do?method=list&${params }';"/>
	</div>
	
</form>
</div>

</body>
</html>