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
<title>홈술 닷컴</title>

<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon">
<link rel="icon" href="image/favicon.ico" type="image/x-icon">

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
    <link rel="stylesheet" href="css/fontawesome.css">
    <link rel="stylesheet" href="css/soolMain.css">
    <link rel="stylesheet" href="css/owl.css">
    
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
              <li class="nav-item active">
                <a class="nav-link" href="index.html" style="color: #000000;">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="products.html">홈술 고르기</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html">Best 홈술</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">홈술 가이드</a>
              </li>
            </ul>
            
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="banner header-text">
      <div class="owl-banner owl-carousel">
        <div class="banner-item-01">
          <div class="text-content">
            <h4>Best Offer</h4>
            <h2>New Arrivals On Sale</h2>
          </div>
        </div>
        <div class="banner-item-02">
          <div class="text-content">
            <h4>Flash Deals</h4>
            <h2>Get your best products</h2>
          </div>
        </div>
        <div class="banner-item-03">
          <div class="text-content">
            <h4>Last Minute</h4>
            <h2>Grab last minute deals</h2>
          </div>
        </div>
      </div>
    </div>
    <!-- Banner Ends Here -->

    <div class="latest-products">
      <div class="container">
        <div class="row">
        
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Best 홈술 상품</h2>
              <a href="products.html">view all products <i class="fa fa-angle-right"></i></a>
            </div>
          </div>
          
          <div class="col-md-4">
            <div class="product-item">
              <div><a href="#"><img src="image/adver/광고1.png" alt=""></a></div>
              <div class="down-content">
                <a href="#"><h4>하얀 까마귀</h4></a>
                <h6>10,000원</h6>
                <p>쌀의 단맛과 발효로 인한 상큼한 향의 조화는 수제 요거트가 생각나는 술이예요.
                생막걸리 특유의 발효의 미학이 고스란히 담겼어요.</p>
                <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul>
                <span>View reviews</span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="image/adver/광고7.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>하얀 까마귀</h4></a>
                <h6>10,000원</h6>
                <p>쌀의 단맛과 발효로 인한 상큼한 향의 조화는 수제 요거트가 생각나는 술이예요.
                생막걸리 특유의 발효의 미학이 고스란히 담겼어요.</p>
                <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul>
                <span>Reviews (21)</span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="image/adver/광고3.png" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>하얀 까마귀</h4></a>
                <h6>10,000원</h6>
                <p>쌀의 단맛과 발효로 인한 상큼한 향의 조화는 수제 요거트가 생각나는 술이예요.
                생막걸리 특유의 발효의 미학이 고스란히 담겼어요.</p>
                <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul>
                <span>Reviews (36)</span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="image/adver/광고4.png" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>하얀 까마귀</h4></a>
                <h6>10,000원</h6>
                <p>쌀의 단맛과 발효로 인한 상큼한 향의 조화는 수제 요거트가 생각나는 술이예요.
                생막걸리 특유의 발효의 미학이 고스란히 담겼어요.</p>
                <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul>
                <span>Reviews (48)</span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="image/adver/광고5.png" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>하얀 까마귀</h4></a>
                <h6>10,000원</h6>
                <p>쌀의 단맛과 발효로 인한 상큼한 향의 조화는 수제 요거트가 생각나는 술이예요.
                생막걸리 특유의 발효의 미학이 고스란히 담겼어요.</p>
                <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul>
                <span>Reviews (16)</span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="product-item">
              <a href="#"><img src="image/adver/광고6.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>하얀 까마귀</h4></a>
                <h6>10,000원</h6>
                <p>쌀의 단맛과 발효로 인한 상큼한 향의 조화는 수제 요거트가 생각나는 술이예요.
                생막걸리 특유의 발효의 미학이 고스란히 담겼어요.</p>
                <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul>
                <span>Reviews (32)</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="best-features">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>홈술 닷컴이 드리는 혜택</h2>
            </div>
          </div>
          <div class="col-md-6">
            <div class="left-content">
              <h4>인기 상품을 찾으시나요?</h4>
              <p><a rel="nofollow" href="https://templatemo.com/tm-546-sixteen-clothing" target="_parent">
             	 Homesool</a>은 쌀의 단맛과 발효로 인한 상큼한 향의 조화는 수제 요거트가 생각나는 술이예요.
                생막걸리 특유의 발효의 미학이 고스란히 담겼어요.
                <a rel="nofollow" href="https://templatemo.com/contact">문의사항은</a>여기를 클릭해주세요.</p>
              <ul class="featured-list">
                <li><a href="#">하얀 까마귀</a></li>
                <li><a href="#">해창 막걸리</a></li>
                <li><a href="#">녹두전</a></li>
                <li><a href="#">김치전</a></li>
                <li><a href="#">힘들어잉</a></li>
              </ul>
              <a href="about.html" class="filled-button">Read More</a>
            </div>
          </div>
          <div class="col-md-6">
            <div class="right-image">
              <img src="image/11_main_061.jpg" alt="">
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="call-to-action">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="inner-content">
              <div class="row">
                <div class="col-md-8">
                  <h4>Fresh &amp; Perfect <em>Homesool</em> Products</h4>
                  <p>쌀의 단맛과 발효로 인한 상큼한 향의 조화는 수제 요거트가 생각나는 술이예요.
                생막걸리 특유의 발효의 미학이 고스란히 담겼어요.</p>
                </div>
                <div class="col-md-4">
                  <a href="#" class="filled-button">신제품 보러가기</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
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