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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<title>홈술 가이드</title>

<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon">
<link rel="icon" href="image/favicon.ico" type="image/x-icon">

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
    <link rel="stylesheet" href="css/fontawesome.css">
    <link rel="stylesheet" href="css/soolMain.css">
    <link rel="stylesheet" href="css/owl.css">
    
 <style type="text/css">
 .box{
 
 float : left;
 }
 
 #outer{
 
 overflow : hidden;
 }
 
 </style>
</head>
<body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
        
          <a class="navbar-brand" href="index.html"><h2>Home <em>sool</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
      		  <img src="image/homesool_logo.png" style="width: 10%;">
          <div class="collapse navbar-collapse" id="navbarResponsive">
          
            <ul class="navbar-nav ml-auto">
              <li class="nav-item ">
                <a class="nav-link" href="main.jsp">Home</a>
              </li> 
              <li class="nav-item">
                 <a class="nav-link" href="product.jsp">홈술 고르기
                  <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                 <a class="nav-link" href="index.html">Best 홈술
                  <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item active">
                 <a class="nav-link" href="index.html" style="color: #000000;">홈술 가이드
                  <span class="sr-only">(current)</span>
                </a>
              </li>
            </ul>
            
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
<table>
	<tr align="left">
		<td colspan="3">	
	</tr>
</table>

    
    <div class="products">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="filters">
              <ul>
                  <li class="active" data-filter="*">홈술 멤버십</li>
                  <li data-filter=".gra">구독 가이드</li>
                  <li data-filter=".des">배송 유형별 안내</li>
              </ul>
          	</div>
          
		    <div>
              <a href="<%=cp %>/main.com"><img src="image/home_icon.png" style="width: 20px;">
			Home</a>>홈술 가이드>홈술 멤버십</div>
            </div>
            
            
<div class="flex-sb-m w-full p-t-3 p-b-24" align="center"></div>

	<div style="width :1200px; height :600px; color : #000000;
				font-size: 30pt;">
		<center><br/>
			<b>홈술 가이드</b>
		</center>
		<br/>
		<center>
		<div style="width :100%; height :200px; color : #000000; background-color: #fffaf5;
				font-size: 20pt;">
		<br/>
			<b>홈술 멤버십</b>
			
			<div style="font-size: 12.5pt;">
				홈술닷컴의 등급별 혜택을 누려보세요!
			</div>
		<br/><br/><br/>
	
			<div style="font-size: 15pt;" align="left">
				<b>등급별 혜택</b>
			</div>
		
			<hr width="100%" color="#ededed" align="center" size="30" />
		
		<table width="1200px;" height="500px;">
			<thead>
				<tr>   
					<th></th>	
					<th><i><img src="image/close.png" alt=""></i>다이아몬드</th> 
					<th><i><img src="image/membership_icn02.png" alt=""></i>플래티넘</th>
					<th><i><img src="image/membership_icn03.png" alt=""></i>골드</th> 
					<th><i><img src="image/membership_icn04.png" alt=""></i>실버</th> 
					<th><i><img src="image/membership_icn05.png" alt=""></i>브론즈</th> 
				</tr>
			</thead>
		
			<tbody>
				<tr>
					<th>최근 3개월<br> 구매액</th> 
					<td>50만원 이상</td>
					<td>30만원 이상</td>	
					<td>10만원 이상</td>	
					<td>5만원 이상</td>
					<td>5만원 미만</td>	 
				</tr> 
				<tr><td colspan="8" height="1" bgcolor="#cccccc" align="center"></td></tr>
				<tr>
					<th>적립혜택<br><span>(1개월 단위)</span></th>
					<td>7%</td>		 							  
					<td>7%</td>
					<td>5%</td>	
					<td>2%</td>
					<td>0.5%</td>
				</tr>
				<tr><td colspan="8" height="1" bgcolor="#cccccc" align="center"></td></tr>
				<tr>
					<th>쿠폰<br><span>(1개월 단위)</span></th>
					<td>10%할인 2장<br>7천원 할인<br>무료배송 2장</td>	
					<td>7%할인 2장<br>5천원 할인<br>무료배송 </td> 
					<td>5천원 할인<br>무료배송 </td>
					<td>3천원 할인<br>5% 할인</td>
					<td>1천원 할인<br>-</td>
				</tr> 
				<tr><td colspan="8" height="1" bgcolor="#cccccc" align="center"></td></tr>
			</tbody>
		</table>
	</div>

		</center>
	</div>
	   
       

    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="inner-content">
             <p>Copyright &copy; 2022 Homesool 3조 Co., Ltd.
            
            - Design: <a rel="nofollow noopener" href="https://templatemo.com" target="_blank">3조</a></p>
            </div>
          </div>
        </div>
      </div>
    </footer>
    
    
	 </div>	
  </div>
</div>	

    <!-- Bootstrap core JavaScript -->
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="js/custom.js"></script>
    <script src="js/owl.js"></script>
    <script src="js/slick.js"></script>
    <script src="js/isotope.js"></script>
    <script src="js/accordions.js"></script>


    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


</body>
</html>