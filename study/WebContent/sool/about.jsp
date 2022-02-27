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
<meta name="viewport" content="width=device-width">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/all.css">
	<link rel="stylesheet" type="text/css" href="css/all.min.css">
	<link rel="stylesheet" type="text/css" href="css/flexslider.css">
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="css/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="css/jquery.rateyo.css"/>
	<link rel="stylesheet" type="text/css" href="css/jquery.mmenu.all.css" />
	<link rel="stylesheet" type="text/css" href="inner-page-style.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	
<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon">
<link rel="icon" href="image/favicon.ico" type="image/x-icon">

</head>
<body itemscope itemtype="http://schema.org/AboutPage">
	<div id="page" class="site">
		<header class="site-header">
			<div class="top-header">
				<div class="container">
					<div class="top-header-left">
						<div class="top-header-block">
							<a href="mailto:info@homesool.com"><i class="fas fa-envelope"></i> info@homesool.com</a>
						</div>
						<div class="top-header-block">
							<a href="tel:+9779813639131"><i class="fas fa-phone"></i> +977 9813639131</a>
						</div>
					</div>
					<div class="top-header-right">
						<div class="social-block">
							<ul class="social-list">
								<li><a href=""><i class="fab fa-viber"></i></a></li>
								<li><a href=""><i class="fab fa-google-plus-g"></i></a></li>
								<li><a href=""><i class="fab fa-facebook-square"></i></a></li>
								<li><a href=""><i class="fab fa-facebook-messenger"></i></a></li>
								<li><a href=""><i class="fab fa-twitter"></i></a></li>
								<li><a href=""><i class="fab fa-skype"></i></a></li>
							</ul>
						</div>
						<div class="login-block">
							<a href="">Login /</a>
							<a href="">Register</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Top header Close -->
			<div class="main-header">
				<div class="container">
					<div class="logo-wrap">
						<img src="image/homesool_logo.png" alt="Logo Image">
					</div>
					<div class="nav-wrap">
						<nav class="nav-desktop">
							<ul class="menu-list">
								<li><a href="#">홈술 고르기</a></li>
								<li class="menu-parent">홈술 카테고리
									<ul class="sub-menu">
										<li><a href="#">Child</a></li>
										<li><a href="#">Child</a></li>
										<li class="menu-parent">Child
											<ul class="sub-menu">
												<li><a href="">Grand-child</a></li>
												<li><a href="">Grand-child</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li class="menu-parent">홈술가이드
									<ul class="sub-menu">
										<li><a href="#">Child</a></li>
										<li><a href="#">Child</a></li>
									</ul>
								</li>
								<li><a href="">고객센터</a></li>
							</ul>
						</nav>
						<div id="bar">
							<i class="fas fa-bars"></i>
						</div>
						<div id="close">
							<i class="fas fa-times"></i>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Header Close -->
		<div class="banner">
			<div class="owl-four owl-carousel">
				<img src="image/page-banner.jpg" alt="Image of Bannner">
				<img src="image/adver/page-banner.jpg" alt="Image of Bannner">
				<img src="image/adver/page-banner.jpg" alt="Image of Bannner">
			</div>
			<div class="container">
				<h1>홈술 닷컴에 오신 걸 환영 합니다!</h1>
				<h3>With our advance search feature you can now find the homesool for you...</h3>
			</div>
			 <div id="owl-four-nav" class="owl-nav"></div>
		</div>
		<!-- <div class="banner">
			<div class="owl-five owl-carousel owl-theme">
	            <div class="item-video">
            		<iframe width="100%" height="450" src="https://www.youtube.com/embed/ENVW3uZ3a-4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
            		</iframe>
	            </div>
	            <div class="item-video">
	            	<iframe width="100%" height="450" src="https://www.youtube.com/embed/0bfk90rWV9U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	            </div>
	            <div class="item-video">
	            	<iframe width="100%" height="450" src="https://www.youtube.com/embed/ktvTqknDobU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	            </div>
	            <div class="item-video">
            		<iframe width="100%" height="450" src="https://www.youtube.com/embed/ENVW3uZ3a-4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
            		</iframe>
	            </div>
	            <div class="item-video">
	            	<iframe width="100%" height="450" src="https://www.youtube.com/embed/0bfk90rWV9U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	            </div>
	            <div class="item-video">
	            	<iframe width="100%" height="450" src="https://www.youtube.com/embed/ktvTqknDobU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	            </div>
          </div>
		</div> -->

		<section class="about-upper-section" itemprop="mainContentofPage">
			<div class="container">
				<article class="who-we-are">
					<h2 class="top-heading">술을 인터넷으로 산다고요? 비대면 시대 홈술 쇼핑법</h2>
					<p>코로나 19가 우리 생활을 바꾼지도 어언 19개월이 훌쩍 넘었습니다. 외부에서
					이루어지던 문화활동, 야외활동, 외식 등은 크게 감소했습니다. 이제 소비의 중심은
					'집'입니다. 집으로 이동한 소비 활동 중 온라인 쇼핑을 빼놓을 수 없죠!</p>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex</p>
				</article>
				<div class="our-story">
					<h2 class="top-heading">our story</h2>
					<ul>
						<li><i class="fas fa-chalkboard-teacher"></i> <a href="#">60+ certified teachers</a></li>
						<li><i class="fas fa-graduation-cap"></i> <a href="#">600+ students enrolled</a></li>
						<li><i class="fas fa-book-open"></i> <a href="#">50+ courses completed</a></li>
						<li><i class="fas fa-users"></i> <a href="#">10000+ foreign followers</a></li>

						<!-- For None link use below -->
						<!-- <li><i class="fas fa-chalkboard-teacher"></i> <p>60+ certified teachers</p></li>
						<li><i class="fas fa-graduation-cap"></i>  <p>600+ students enrolled</p></li>
						<li><i class="fas fa-book-open"></i>  <p>50+ courses completed</p></li>
						<li><i class="fas fa-users"></i>  <p>10000+ foreign followers</p></li> -->
					</ul>
				</div>
			</div>
		</section>

		<section class="team-members" itemprop="contributor">
			<div class="container">
				<h2 class="top-heading">meet our team</h2>
				<article class="developer-grid">
					<div class="developer-wrap">
						<img src="image/developer-img.jpg" alt="developer images">
						<h3>Bibek Basnet</h3>
						<p>Web Developer</p>
						<ul>
							<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li><a href=""><i class="fab fa-instagram"></i></a></li>
							<li><a href=""><i class="fab fa-twitter"></i></a></li>
							<li><a href=""><i class="fab fa-linkedin-in"></i></a></li>
						</ul>
					</div>

					<div class="developer-wrap">
						<img src="image/developer-img.jpg" alt="developer images">
						<h3>Bibek Basnet</h3>
						<p>Web Developer</p>
						<ul>
							<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li><a href=""><i class="fab fa-instagram"></i></a></li>
							<li><a href=""><i class="fab fa-twitter"></i></a></li>
							<li><a href=""><i class="fab fa-linkedin-in"></i></a></li>
						</ul>
					</div>

					<div class="developer-wrap">
						<img src="image/developer-img.jpg" alt="developer images">
						<h3>Bibek Basnet</h3>
						<p>Web Developer</p>
						<ul>
							<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li><a href=""><i class="fab fa-instagram"></i></a></li>
							<li><a href=""><i class="fab fa-twitter"></i></a></li>
							<li><a href=""><i class="fab fa-linkedin-in"></i></a></li>
						</ul>
					</div>

					<div class="developer-wrap">
						<img src="image/developer-img.jpg" alt="developer images">
						<h3>Bibek Basnet</h3>
						<p>Web Developer</p>
						<ul>
							<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li><a href=""><i class="fab fa-instagram"></i></a></li>
							<li><a href=""><i class="fab fa-twitter"></i></a></li>
							<li><a href=""><i class="fab fa-linkedin-in"></i></a></li>
						</ul>
					</div>

					<div class="developer-wrap">
						<img src="image/developer-img.jpg" alt="developer images">
						<h3>Bibek Basnet</h3>
						<p>Web Developer</p>
						<ul>
							<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li><a href=""><i class="fab fa-instagram"></i></a></li>
							<li><a href=""><i class="fab fa-twitter"></i></a></li>
							<li><a href=""><i class="fab fa-linkedin-in"></i></a></li>
						</ul>
					</div>

					<div class="developer-wrap">
						<img src="image/developer-img.jpg" alt="developer images">
						<h3>Bibek Basnet</h3>
						<p>Web Developer</p>
						<ul>
							<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li><a href=""><i class="fab fa-instagram"></i></a></li>
							<li><a href=""><i class="fab fa-twitter"></i></a></li>
							<li><a href=""><i class="fab fa-linkedin-in"></i></a></li>
						</ul>
					</div>

					<div class="developer-wrap">
						<img src="image/developer-img.jpg" alt="developer images">
						<h3>Bibek Basnet</h3>
						<p>Web Developer</p>
						<ul>
							<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li><a href=""><i class="fab fa-instagram"></i></a></li>
							<li><a href=""><i class="fab fa-twitter"></i></a></li>
							<li><a href=""><i class="fab fa-linkedin-in"></i></a></li>
						</ul>
					</div>

					<div class="developer-wrap">
						<img src="image/developer-img.jpg" alt="developer images">
						<h3>Bibek Basnet</h3>
						<p>Web Developer</p>
						<ul>
							<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li><a href=""><i class="fab fa-instagram"></i></a></li>
							<li><a href=""><i class="fab fa-twitter"></i></a></li>
							<li><a href=""><i class="fab fa-linkedin-in"></i></a></li>
						</ul>
					</div>
				</article>
			</div>
		</section>
		<!-- Team Members Closed  -->

		<section class="what-other-say">
			<div class="container">
				<div class="wrap-others-say">
					<h1>what other say about us</h1>
					<div id="carousel" class="flexslider">
						<ul class="slides">
							<li class="img-wrap">
								<figure>
									<img src="image/review-big-img.jpg" alt="Person Image">
									<figcaption class="hidden">
										<h3>Sagar Sapkota</h3>
										<h4>UI Designer</h4>
									</figcaption>
								</figure>
							</li>
							<li class="img-wrap">
								<figure>
									<img src="image/review-big-img.jpg" alt="Person Image">
									<figcaption class="hidden">
										<h3>Sagar Sapkota</h3>
										<h4>UI Designer</h4>
									</figcaption>
								</figure>
							</li>
							<li class="img-wrap">
								<figure>
									<img src="image/review-big-img.jpg" alt="Person Image">
									<figcaption class="hidden">
										<h3>Sagar Sapkota</h3>
										<h4>UI Designer</h4>
									</figcaption>
								</figure>
							</li>
							<li class="img-wrap">
								<figure>
									<img src="image/review-big-img.jpg" alt="Person Image">
									<figcaption class="hidden">
										<h3>Sagar Sapkota</h3>
										<h4>UI Designer</h4>
									</figcaption>
								</figure>
							</li>
							<li class="img-wrap">
								<figure>
									<img src="image/review-big-img.jpg" alt="Person Image">
									<figcaption class="hidden">
										<h3>Sagar Sapkota</h3>
										<h4>UI Designer</h4>
									</figcaption>
								</figure>
							</li>
							<li class="img-wrap">
								<figure>
									<img src="image/review-big-img.jpg" alt="Person Image">
									<figcaption class="hidden">
										<h3>Sagar Sapkota</h3>
										<h4>UI Designer</h4>
									</figcaption>
								</figure>
							</li>
							<li class="img-wrap">
								<figure>
									<img src="image/review-big-img.jpg" alt="Person Image">
									<figcaption class="hidden">
										<h3>Sagar Sapkota</h3>
										<h4>UI Designer</h4>
									</figcaption>
								</figure>
							</li>
							<li class="img-wrap">
								<figure>
									<img src="image/review-big-img.jpg" alt="Person Image">
									<figcaption class="fig">
										<h3 class="hidden">Sagar Sapkota</h3>
										<h4 class="hidden">UI Designer</h4>
									</figcaption>
								</figure>
							</li>
						</ul>
					</div>

					<div id="slider" class="flexslider">
	  					<ul class="slides">
						    <li>
						    	<div class="testimonial-holder">
						    		<strong class="title">Amazing service and amazing team. Thank you!</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div>
						    	</div>
						    </li>
						    <li>
						    	<div class="testimonial-holder">
						    		<strong class="title">Very Satisfaied with their service</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div>
						    	</div>
						    </li>
						    <li>
						    	<div class="testimonial-holder">
						    		<strong class="title">Quick, efficient and meets your expectations</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div>
						    	</div>
						    </li>
						    <li>
						    	<div class="testimonial-holder">
						    		<strong class="title">The website was according our imagination</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div>
						    	</div>
						    </li>
						    <li>
						    	<div class="testimonial-holder">
						    		<strong class="title">Amazing service and amazing team. Thank you!</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div>
						    	</div>
						    </li>
						    <li>
						    	<div class="testimonial-holder">
						    		<strong class="title">Very Satisfaied with their service</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div>
						    	</div>
						    </li>
						    <li>
						    	<div class="testimonial-holder">
						    		<strong class="title">Quick, efficient and meets your expectations</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div>
						    	</div>
						    </li>
						    <li>
						    	<div class="testimonial-holder">
						    		<strong class="title">The website was according our imagination</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div>
						    	</div>
						    </li>
	  					</ul>
					</div>

					<!-- <div id="sync2" class="owl-carousel owl-theme">
					  <div class="item">
					    <img src="images/review-big-img.jpg" alt="Person Image"></div>
					  <div class="item">
					    <img src="images/review-big-img.jpg" alt="Person Image"></div>
					  <div class="item">
					    <img src="images/review-big-img.jpg" alt="Person Image"></div>
					  <div class="item">
					    <img src="images/review-big-img.jpg" alt="Person Image"></div>
					  <div class="item">
					    <img src="images/review-big-img.jpg" alt="Person Image"></div>
					  <div class="item">
					    <img src="images/review-big-img.jpg" alt="Person Image"></div>
					  <div class="item">
					    <img src="images/review-big-img.jpg" alt="Person Image"></div>
					  <div class="item">
					    <img src="images/review-big-img.jpg" alt="Person Image"></div>
					</div> -->

					<!-- <div id="sync1" class="owl-carousel owl-theme">
					 	<div class="item">
					   		<strong class="title">Amazing service and amazing team. Thank you!</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div>
						</div>
					  <div class="item">
					    <strong class="title">Very Satisfaied with their service</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div></div>
					  <div class="item">
					    <strong class="title">Quick, efficient and meets your expectations</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div></div>
					  <div class="item">
					    <strong class="title">Very Satisfaied with their service</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div></div>
					  <div class="item">
					    <strong class="title">Very jhkhkh with their service</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div></div>
					  <div class="item">
					    <strong class="title">Very 7777 with their service</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div></div>
					  <div class="item">
					    <strong class="title">Very 888 with their service</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div></div>
					  <div class="item">
					    <strong class="title">Very 9999 with their service</strong>
						    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique fer-<br/>mentum mauris, non tincidunt arcu venenatis vel. Nam et vehicula turpis. Ut nunc purus, mattis eu odio a, egestas facilisis nibh. Mauris magna diam, iaculis vitae sapien non, pharetra congue purus. Phasellus in odio purus.</p>
						    		<div class="rateYo"></div></div>
					</div> -->
				</div>
			</div>
		</section>
		<!-- End of Others talk -->

		<section class="query-section">
			<div class="container">
				<p>Customer Center<a href="tel:+9779813639131"><i class="fas fa-phone"></i> 080.550.5500</a></p>
			</div>
		</section>
		<!-- End of Query Section -->
		<footer class="page-footer">
			<div class="footer-first-section">
				<div class="container">
					<div class="box-wrap">
						<header>
							<h1>about</h1>
						</header>
						<p>Edugate is a great start for and education. Personnel or oganization to start the online business with 1 click</p>

						<h4><a href="tel:+9779813639131"><i class="fas fa-phone"></i> +977 9813639131</a></h4>
						<h4><a href="mailto:info@educationpro.com"><i class="fas fa-envelope"></i> info@educationpro.com</a></h4>
						<h4><i class="fas fa-map-marker-alt"></i>Gongabu, Kathmandu, Nepal</h4>
					</div>

					<div class="box-wrap">
						<header>
							<h1>links</h1>
						</header>
						<ul>
							<li><a href="#">Teacher</a></li>
							<li><a href="#">Courses</a></li>
							<li><a href="#">Courses</a></li>
							<li><a href="#">Courses</a></li>
							<li><a href="#">Courses</a></li>
							<li><a href="#">Courses</a></li>
						</ul>
					</div>

					<div class="box-wrap">
						<header>
							<h1>recent courses</h1>
						</header>
						<div class="recent-course-wrap">
							<img src="image/ui-ux.jpg" alt="Ui/Ux Designing">
							<a href=""><div class="course-name">
								<h3>UI/UX Designer courses</h3>
								<p><span>$50</span> $40</p>
							</div></a>
						</div>
						<div class="recent-course-wrap">
							<img src="image/ui-ux.jpg" alt="Ui/Ux Designing">
							<a href=""><div class="course-name">
								<h3>UI/UX Designer courses</h3>
								<p><span>$50</span> $40</p>
							</div></a>
						</div>
					</div>

					<div class="box-wrap">
						<header>
							<h1>quick contact</h1>
						</header>
						<section class="quick-contact">
							<input type="email" name="email" placeholder="Your Email*">
							<textarea placeholder="Type your message*"></textarea>
							<button>send message</button>
						</section>
					</div>

				</div>
			</div>
			<!-- End of box-Wrap -->
			<div class="footer-second-section">
				<div class="container">
					<hr class="footer-line">
					<ul class="social-list">
						<li><a href=""><i class="fab fa-facebook-square"></i></a></li>
						<li><a href=""><i class="fab fa-twitter"></i></a></li>
						<li><a href=""><i class="fab fa-skype"></i></a></li>
						<li><a href=""><i class="fab fa-youtube"></i></a></li>
						<li><a href=""><i class="fab fa-instagram"></i></a></li>
					</ul>
					<hr class="footer-line">
				</div>
			</div>
			<div class="footer-last-section">
				<div class="container">
					<p>Copyright 2022 &copy; homesool.com <span> | </span> Theme designed and developed by <a href="https://labtheme.com">3조</a></p>
				</div>
			</div>
		</footer>
	</div>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/lightbox.js"></script>
	<script type="text/javascript" src="js/all.js"></script>
	<script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/jquery.rateyo.js"></script>
	<script type="text/javascript" src="js/jquery.mmenu.all.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>
</body>

</html>