<%@page import="java.util.GregorianCalendar"%>
<%@page import="com.sool.SoolUserDTO"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	Calendar cal = Calendar.getInstance();
	
	//오늘날짜
	int nowYear = cal.get(Calendar.YEAR);//2022
	int nowMonth = cal.get(Calendar.MONTH)+1;//2
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);//26
	
	//클라이언트가 넘겨준 데이터
	String strYear = request.getParameter("user_bir1");
	String strMonth = request.getParameter("user_bir2");
	String strDay = request.getParameter("user_bir3");
	
	int user_bir1 = nowYear; //2022
	int user_bir2 = nowMonth;//2
	int user_bir3 = nowDay; //26
	
	if(strYear!=null){
		user_bir1 = Integer.parseInt(strYear);
	}
	
	if(strMonth!=null){
		user_bir2 = Integer.parseInt(strMonth);
	}
	
	if(strDay!=null){
		user_bir3 = Integer.parseInt(strDay);
	}
	
	SoolUserDTO dto = new SoolUserDTO();
	
	cal.set(user_bir1, user_bir2-1, user_bir3);

	//getActualMaximum 사용하여 월에따른 날짜 구하기
	int max = cal.getMaximum(Calendar.DAY_OF_MONTH);
	
	
	
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="icon" type="image/png" href="image/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="css/login_util.css">
	<link rel="stylesheet" type="text/css" href="css/login_main.css">

<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon">
<link rel="icon" href="image/favicon.ico" type="image/x-icon">

<link rel="stylesheet" type="text/css" href="css/btnOnly.css">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
          
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

             
                if (data.userSelectedType === 'R') { //도로명 주소
                    addr = data.roadAddress;
                } else { // 지번 주소
                    addr = data.jibunAddress;
                }


                if(data.userSelectedType === 'R'){
                   
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                   
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                   
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

              
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("addr1").value = addr;
                
                document.getElementById("addr2").focus();
            }
        }).open();
    }
    
    
    function selectedEmail(frm) {
    	
   	 frm.textValue.value = frm.selectBox.options[frm.selectBox.selectedIndex].text;  	
     frm.user_email.value = frm.selectBox.options[frm.selectBox.selectedIndex].value;
     
    }
    
   
</script>
<script type="text/javascript">

function info(){
	
	var f = document.myForm;
	
	var sy =<%=nowYear%>-80;
	
	
var fy =<%=user_bir1%> -80;
	
	for(i=0;i<81;i++){
		
		f.user_bir1[i] = new Option(fy,fy);
		
		if(f.user_bir1[i].value==<%=user_bir1%>){
			f.user_bir1[i].selected = true;
			
		}
		fy++;
	}
	
	for(j=0;j<12;j++){
		f.user_bir2[j] = new Option(j+1,j+1);
		
		
	}
	f.user_bir2[<%=user_bir2%>-1].selected = true;
	
	
	
	
	for(k=0;k<<%=max%>;k++){
		f.user_bir3[k] = new Option(k+1,k+1);
	}
	
	f.user_bir3[<%=user_bir3%>].selected = true;

}

function signUp() {
	
	var f = document.myForm;
	
	if(!f.user_id.value){
		alert("아이디를 입력하세요")
		f.user_id.focus();
		return;
		
	}
	
	//아이디 중복검사

	
	if(!f.user_pwd.value){
		alert("비밀번호를 입력하세요")
		f.user_pwd.focus();
		return;
	}
	
	if(!f.user_pwdck.value){
		alert("비밀번호 확인을 입력하세요")
		f.user_pwdck.focus();
		return;
	}
	
	if(f.user_pwd.value!=f.user_pwdck.value){
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다")
		
		return;
	}
	
	if(!f.user_nick.value){
		alert("닉네임을 입력하세요")
		f.user_nick.focus();
		return;
	}
	
	//닉네임중복검사

	if(!f.user_name.value){
		alert("이름를 입력하세요")
		f.user_name.focus();
		return;
	}
	
	if(!f.user_email.value){
		alert("이메일을 입력하세요")
		f.user_email.focus();
		return;
	}
	
	//이메일중복검사
	
	if(!f.user_tel.value){
		alert("전화번호를 입력하세요")
		f.user_tel.focus();
		return;
	}
	
	if(!f.user_addr1.value){
		alert("우편번호 찾기를 누르세요")	
		return;
	}
	
	if(!f.user_addr2.value){
		alert("상세주소를 입력하세요")
		f.user_addr2.focus();
		return;
	}
	
	if(!f.user_gender.value){
		alert("성별을 선택하세요")
		return;
	}
	
	
	f.action = "<%=cp%>/homesool/create2_ok.com";
	f.submit();

}

function cancel() {
	
	var f = document.myForm;
	
	f.action = "<%=cp%>/homesool/main.com";
	f.submit();
	
}

</script>
<title>회원가입 정보입력</title>
</head>
<body onload="info();">


<table>
<tr align="left">
	<td colspan="3">
	
	 <a href="<%=cp %>/main.com"><img src="image/home_icon.png" style="width: 20px;"></a>
		Home>회원가입>약관동의>가입완료</td>
</tr>
</table>
<center>
	<div class="wrap-login100 p-t-50 p-b-90" align="center">
		<form class="login100-form validate-form flex-sb flex-w">
			<span class="login100-form-title p-b-51">
				<b>회원 가입</b>
			</span>
		
			<div align="center">
				홈술닷컴의 회원이 되셔서 회원등급할인/할인쿠폰/적립금 등 다양한 서비스를 받으세요.
			</div>
					
			<div class="flex-sb-m w-full p-t-3 p-b-24"></div>
				<div style="width :150px; height :65px; color : #000000; background-color: #ededed; ">
					<center><br/>STEP 1 약관동의</center>
				</div>

			<div style="width :150px; height :65px; color : #000000; background-color: #ededed; ">
				<center><br/>STEP 2 정보입력</center>
			</div>

			<div style="width :150px; height :65px; color : #fff; background-color: #eda71a; ">
				<center><br/>STEP 3 가입완료</center>
			</div>

</form>
</div>




<form action="" method="post" name="myForm">
<!-- 기본정보 -->
<table width="800" height="400" align="center">
<tr>
	<td colspan="2"><b>기본정보</b></td>
	<td align="right">*표시는 반드시 입력하셔야 하는 항목입니다</td>
	
</tr>

 <tr><td colspan="3" height="3" bgcolor="#eda71a" align="center"></td></tr>
 
 <tr>
 	<td>아이디(*)</td>
 	<td colspan="2"><input type="text" name="user_id"></td>
 </tr>

 <tr>
 	<td>${ovId }</td>
 </tr>
 
 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>비밀번호(*)</td>
 	<td colspan="2"><input type="password" name="user_pwd"></td>
 </tr>
 
 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>비밀번호 확인(*)</td>
 	<td colspan="2"><input type="password" name="user_pwdck"></td>
 </tr>
 
  <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>닉네임(*)</td>
 	<td colspan="2"><input type="text" name="user_nick"></td>
 </tr>

 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>이름(*)</td>
 	<td colspan="2"><input type="text" name="user_name"></td>
 </tr>
 
 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>이메일(*)</td>
 	
 	<td><input type="text" name="user_email"></td>
 	<td><select name="selectBox" onchange="selectedEmail(this.form);">
 		<option value="@">직접입력</option>
 		<option value="@naver.com">naver.com</option>
 		<option value="@hanmail.net">hanmail.net</option>
 		<option value="@daum.net">daum.net</option>
 		<option value="@nate.com">nate.com</option>
 		<option value="@hotmail.com">hotmail.com</option>
 		<option value="@gmail.com">gmail.com</option>
 		<option value="@icloud.com">icloud.com</option>
 	</select></td>
 </tr>

 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>휴대폰번호(*)</td>
 	<td colspan="2"><input type="text" name="user_tel" value="-없이입력하세요."></td>
 </tr>
 
 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td rowspan="3">주소(*)</td>
 	<td><input type="text" id="sample6_postcode"></td>
 	<td><input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"></td>
 </tr>
 
 <tr>
 	<td colspan="2"><input type="text" name="user_addr1" id="addr1" ></td>
 </tr>
 <tr>	
 	<td colspan="2"><input type="text" name="user_addr2" id="addr2"></td>
 	<td><input type="hidden" id="sample6_extraAddress" ></td>
 </tr>
 </table>
 
 
 <!-- 부가정보  -->
 <table width="800" height="100" align="center">
 <tr><td colspan="4" height="3" bgcolor="#eda71a" align="center"></td></tr>
 
 <tr>
 	<td>성별(*)</td>
 	<td><input type="radio" name="user_gender" value="male">남자</td>
 	<td><input type="radio" name="user_gender" value="female">여자</td>
 </tr>
 
  <tr><td colspan="4" height="1" bgcolor="#cccccc" align="center"></td></tr>
  
 <tr>
 	<td>생일(*)</td>
 	<td><select name="user_bir1" onchange="change();">
 	</select></td>
 	<td><select name="user_bir2" onchange="change();">
 	</select></td>
 	<td><select name="user_bir3" onchange="change();">
 	</select></td>
 </tr>
 
  <tr><td colspan="4" height="1" bgcolor="#cccccc" align="center"></td></tr>
  
 <tr>
 	<td>추천인아이디</td>
 	<td colspan="2"><input type="text" name="user_rid"></td>
 </tr>
 
 


</table>
<input type="hidden" name="user_date">
<input type="hidden" name="textValue">
</form>
<table>

</table>

<div class="flex-sb-m w-full p-t-3 p-b-24" align="center"></div>				
	<br/><br/>
	
	<div class="inGridBtns">
	
		<div>
			<button onclick="cancel();" class="login100-form-btn" style="width: 200px;
			border: 2px solid #ededed ; color: #000000; background-color: #fff;">
				취소					
			</button>
		</div>		
			
		<div>	
			<button onclick="signUp();" class="login100-form-btn" style="width: 200px;">
				회원가입
			</button>
		</div>
		
	</div>

<div class="flex-sb-m w-full p-t-3 p-b-24" align="center"></div>	
</center>
</body>
</html>