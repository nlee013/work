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
 
 .sub_content{width:100%;} 
	#contents{padding:0;}
 
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
            
            
<div class="flex-sb-m w-full p-t-3 p-b-24" align="center"></div>

 <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> > 홈술가이드 > 홈술 멤버십</em>
                </div>
            </div>
            <!-- //location_wrap -->

	
	 
  	 
    	 
 	 

            <div class="sub_content">

                <!-- //side_cont -->
<style>
	.sub_content{width:100%;} 
	#contents{padding:0;}
</style>
<div class="content">
    <div class="cs_menu_box">
		<h2>홈술가이드</h2>
		<ul class="sub_menu">
			<li><a href="../service/membership_lounge.php" class="active">홈술 멤버십</a></li>
			<li><a href="../service/subscribe_guide.php" >구독 홈술 가이드</a></li>
			<li><a href="../service/delivery_type.php" >배송유형별 안내</a></li>
		</ul>
	</div>
	<!-- //sub_menu_box -->
	<div class="guide_tit guide_tit02">
		<dt>홈술 멤버십</dt>
		<dd>홈술닷컴의 등급별 혜택을 누려보세요!</dd>
	</div>

	<div class="louge01 w860"> 
		<h4 class="mt80">등급별 혜택</h4>
		<div class="table_bx mt20">
			<table>
				<thead>
					<tr>   
						<th></th>	
						<th><i><img src="/data/skin/front/moment/img/new/membership_icn01.png" alt=""></i>다이아몬드</th> 
						<th><i><img src="/data/skin/front/moment/img/new/membership_icn02.png" alt=""></i>플래티넘</th>
						<th><i><img src="/data/skin/front/moment/img/new/membership_icn03.png" alt=""></i>골드</th> 
						<th><i><img src="/data/skin/front/moment/img/new/membership_icn04.png" alt=""></i>실버</th> 
						<th><i><img src="/data/skin/front/moment/img/new/membership_icn05.png" alt=""></i>브론즈</th> 
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
					<tr>
						<th>적립혜택<br><span>(1개월 단위)</span></th>
						<td>7%</td>		 							  
						<td>7%</td>
						<td>5%</td>	
						<td>2%</td>
						<td>0.5%</td>
					</tr>
					<tr>
						<th>쿠폰<br><span>(1개월 단위)</span></th>
						<td>10%할인 2장<br>7천원 할인<br>무료배송 2장</td>	
						<td>7%할인 2장<br>5천원 할인<br>무료배송 </td> 
						<td>5천원 할인<br>무료배송 </td>
						<td>3천원 할인<br>5% 할인</td>
						<td>1천원 할인<br>-</td>
					</tr> 
				</tbody>
			</table>
		</div>  

		<h4 class="mt110">전 회원 혜택</h4>
		<p class="mt10">전통주 갤러리 느린마을 산사원 입장권 (4인기준/분기별 1회 한정)</p>	 
		<p class="louge_img mt30"><img src="/data/skin/front/moment/img/new/louge_img.jpg" alt=""></p>
		
		<h4 class="mt90">등급선정기준 및 기간</h4>
		<ul class="mt10">
			<li><em>혜택기간  :</em>  1개월</li>
			<li><em>적용일  : </em> 매월 1일</li>
			<li><em>선정기간  : </em> 최근 3개월 구매액</li>
		</ul>	 
		 
	</div>
	<div class="hs_guide03 mt110">
		<ul class="w860"> 
			<li>쿠폰혜택과 적립혜택은 매월 1일 자동으로 지급 및 적용됩니다.</li>
			<li>구매총액은 실제 구매금액(쿠폰 등 할인이 적용된 금액)으로 주문취소/반품 금액은 제외됩니다. </li>	
			<li>구매횟수와는 상관없이 순수 구매금액 한도가 넘으면 멤버십 혜택이 적용됩니다.</li>  
			<li>구매금액 대상은 홈술닷컴에서 판매하는 전 제품에 해당합니다.</li>		  
			<li>멤버십 혜택은 타인이나 제3자에게 양도하거나 판매할 수 없습니다.	</li>	  
			<li>멤버십 혜택은 변경될 수 있습니다. </li>									   
			<li>할인쿠폰 및 적립금은 정기구독 상품에는 적용되지 않으며, 일회성 구매 시 적용됩니다. </li> 
			<li>멤버십 선정 기준과 혜택은 분기별로 변경될 수 있습니다. </li>	
			<li>쿠폰과 적립금은 구독홈술상품(정기구독)과 일부상품에 적용되지 않을 수 있습니다. </li>
			<li>등급이 변경될 경우 매월 1일 문자로 안내드립니다. 수신여부는 마이페이지>회원정보변경에서 변경하실 수 있습니다. </li>
		</ul> 
	</div>
</div>
<!-- //content_box -->

            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
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