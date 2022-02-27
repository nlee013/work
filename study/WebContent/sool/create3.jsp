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
<title>회원가입 완료</title>

<meta charset="UTF-8">
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

</head>
<body>
<br/>
<table>
<tr align="left">
	<td colspan="3">
	
	 <a href="<%=cp %>/main.com"><img src="image/home_icon.png" style="width: 20px;"></a>
		Home>회원가입>약관동의>가입완료</td>
</tr>
</table>

<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
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
					<br/>
					<div style="width :150px; height :65px; color : #000000; background-color: #ededed; ">
						<center><br/>STEP 2 정보입력</center>
					</div>
					<br/>
					<div style="width :150px; height :65px; color : #fff; background-color: #eda71a; ">
						<center><br/>STEP 3 가입완료</center>
					</div>
					
					<div class="flex-sb-m w-full p-t-3 p-b-24"></div>
					<br/><br/>
					
					<div align="center">
					<span class="login100-form-title p-b-51">
						<b>회원 가입이 완료 되었습니다.</b>
					</span>
					</div>
					
					<div align="center">
					${joinName }님의 회원가입을 축하합니다.<br/>

					</div>
					
					<div class="flex-sb-m w-full p-t-3 p-b-24"></div>
					
					<br/><br/>
					<div class="container-login100-form-btn m-t-17">
						<a href="<%=cp%>/homesool/main.com">
						<button class="login100-form-btn" style="width: 200px; border: 2px solid
						#ededed ; color: #000000; background-color: #fff;">
							메인으로 가기
							
						</button>
						</a>
						
						<br/>&nbsp;<br/>
						<a href="<%=cp%>/homesool/login.com">
						<button class="login100-form-btn" style="width: 200px;">
							로그인하기
						</button>
						</a>
						
					</div>
			
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>

	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<script src="js/main.js"></script>
	
</body>
</html>