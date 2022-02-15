<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>네이버</title>
<script type="text/javascript">

	function sendIt(){
		
		var f = document.myForm;
		
 		if(!f.id.value){
			alert("아이디를 입력 하세요")
			f.id.focus();
			return;
		}
		if(!f.pwd.value){
			alert("비밀번호를 입력 하세요")
			f.pwd.focus();
			return;
		}
		if(f.repwd.value!=f.pwd.value){
			alert("비밀번호를 확인 하세요")
			f.repwd.focus();
			return;
		}
		if(!f.name.value){
			alert("이름을 입력 하세요")
			f.name.focus();
			return;
		}
		if(!f.year.value){
			alert("생년월일을 입력 하세요")
			f.year.focus();
			return;
		}
		if(!f.month.value){
			alert("생년월일을 입력 하세요")
			f.month.focus();
			return;
		}
		if(!f.day.value){
			alert("생년월일을 입력 하세요")
			f.day.focus();
			return; 
		}
  		if(!f.gender.value){
			alert("성별을 입력 하세요")
			f.gender.focus();
			return;
		}  
	  	if(!f.email.value){
			alert("이메일을 입력 하세요")
			f.email.focus();
			return;
		}  
		
 	 	if(!f.phone2.value){
			alert("전화번호를 입력 하세요")
			f.phone2.focus();
			return;
		} 
		  
		f.action= "<%=cp%>/naver2/naver2_ok.jsp"
		f.submit();
		
	}
		


</script>

<style type="text/css">

body {
	font-size: 10pt;
	background-color:#F9F9F9;
}



</style>

</head>
<body>


<form action="" method="post" name="myForm">


<table align="center">

<tr>
	<td align="center"><img src ="./image/1.JPG" width="250px" ></td>
</tr>

<tr>
	<td>아이디</td>
</tr>
	
<tr>
	<td><input type="text" name="id" style="width: 400px; height: 40px;"/></td>
</tr>

<tr>
	<td>비밀번호</td>
</tr>

<tr>
	<td><input type="password" name="pwd" style="width: 400px; height: 40px;"/></td>
</tr>

<tr>
	<td>비밀번호 재확인</td> 
</tr>

<tr>
	<td><input type="password" name="repwd" style="width: 400px; height: 40px;"/></td>
</tr>

<tr>
	<td>이름</td>
</tr>

<tr>
	<td><input type="text" name="name" style="width: 400px; height: 40px;"/></td>
</tr>

<tr>
	<td>생년월일</td>
</tr>

<tr>
	<td><input type="text" name="year" style="width: 130px; height: 33px;"/>
			 
			 <select name="month" style="width: 130px; height: 40px;">
			 <option value="">월</option>
			  <option value="1">1</option>
			   <option value="2">2</option>
			    <option value="3">3</option>
			     <option value="4">4</option>
			      <option value="5">5</option>
			       <option value="6">6</option>
			        <option value="7">7</option>
			         <option value="8">8</option>
			          <option value="9">9</option>
			           <option value="10">10</option>
			            <option value="11">11</option>
			             <option value="12">12</option>
			 	</select>
			 		
	<input type="text" name="day" style="width: 130px; height: 33px;"/></td>
</tr>

<tr>
	<td>성별</td>
</tr>

<tr>
	<td><select name="gender" style="width: 400px; height: 40px;">
	 	  <option>성별</option>	
		  <option value="남자">남자</option>
		  <option value="여자">여자</option>
	</select></td>
</tr>

<tr>
	<td>본인 확인 이메일(선택)</td>
</tr>
	
<tr>
	<td><input type="text" name="email" style="width: 400px; height: 40px;"/></td>
</tr>

<tr>
	<td>휴대전화</td>
</tr>

<tr>
	<td><select name="phone1" style="width: 400px; height: 40px;">
		  <option value="+82">대한민국 +82</option>
		  <option value="+83">일본 +83</option>
		  </select></td>
</tr>
		
<tr>
	<td><input type="text" name="phone2" style="width: 290px; height: 40px;"/> <img src = "./image/4.JPG" width="100" height="42" align="center"></td>
</tr>

<tr>
	<td><input type="text" style="width: 400px; height: 40px;"/></td>
</tr>

<tr>
<td>
<button type="button" value="회원가입" onclick="sendIt();"
						style="border: 0;">
						<img alt="" src="./image/5.JPG"></button>
					</td>
<!-- 	<td align="center" ><img src ="./image/5.JPG" width="400" onclick ="sendIt();"></td> -->
</tr>



</table>
</form>


</body>
</html>