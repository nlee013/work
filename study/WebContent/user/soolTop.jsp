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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/TopNav.css">
<script src="https://kit.fontawesome.com/8351000410.js" crossorigin="anonymous"></script>

<title>Homesool 고르기</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300&display=swap" rel="stylesheet">   
</head>
<body>

<nav class="navbar">
        <div class="navbar_logo">
            <i class="fas fa-cookie-bite"></i>
            <a href="/sool/picksool.jsp">홈술 닷컴</a>
        </div>

        <ul class="navbar_menu">
            <li><a href="">홈술 고르기</a></li>
            <li><a href="">추천 홈술</a></li>
            <li><a href="">신제품</a></li>
            <li><a href="">베스트상품</a></li>
            <li><a href="">홈술 가이드</a></li>
            <li><a href="">홈닷 푸드</a></li>
        </ul>

        <ul class="navbar_usermenu">
<%
        // 현재 로그인된 아이디가 없다면 (= session에 저장된 id가 없다면)
        String id = (String) session.getAttribute("ID");
        if(id == null) {
%>
            <li><a href="contents/view/JoinForm.jsp">회원가입</a></li>
            <li><a href="contents/view/LoginForm.jsp">로그인</a></li>
            <li><a href="contents/view/CartView.jsp">장바구니</a></li>
<%          
            }
		
        // 현재 로그인된 아이디가 있다면 (= session에 저장된 id가 있다면)
        else {
%>
            <li><a href="contents/pro/LogoutPro.jsp">로그아웃</a></li>
            <li><a href="contents/view/CartView.jsp">장바구니</a></li>
            <li><a href="">마이페이지</a></li>
<%			
        }
%>
        </ul>

        <ul class="navbar_icons">
            <li><i class="fab fa-twitter-square"></i></li>
            <li><i class="fab fa-facebook-square"></i></li>
            <li><i class="fab fa-instagram"></i></li>
        </ul>

        <a href="#" class="navbar_toggleBtn">   
            <i class="fas fa-bars"></i>
        </a>
    </nav>   
    
    <script> //윈도우 창의 사이즈를 줄였을 시 나오는 햄버거 모양 토글바
	const toggleBtn = document.querySelector('.navbar_toggleBtn');
	const menu = document.querySelector('.navbar_menu');
	const icons = document.querySelector('.navbar_icons');
	
	toggleBtn.addEventListener('click',()=>{
	    menu.classList.toggle('active');
	    icons.classList.toggle('active');
	});
	</script>
	
</body>
</html>