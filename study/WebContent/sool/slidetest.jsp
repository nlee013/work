<%@ page contentType="text/html; charset=utf-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

		<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		
		<style type="text/css">
			.visual { position: relative;}
			.visual button { position: absolute; z-index: 10; top: 50%; transform: translateY(-50%);
			width: 71px; height: 71px; border-radius: 100%; background: rgba(255,255,255,0.5); border: none;}
			.visual button:before { font-family: 'xeicon'; color:  }
			.visual button.slick-prev { left: 0; font-size: 0; color: transparent; }
			.visual button.slick-prev:before { content: "\e93d"; font-family: 'xeicon';}
			.visual button.slick-next { right: 0; font-size: 0; color: transparent; }	
			.visual button.slick-next:before { content: "\e940"; }
			  
		
		
		</style>

</head>
<body>

<section class="visual">
 
 	<div><a href="http://www.naver.com"><img src="<%=cp %>/sool/main_files/9a1fc9e708537b2444e6b1280e968366_84616.png" alt="" ></a></div>
  	<div><a href="http://www.naver.com"><img src="<%=cp %>/sool/main_files/c41f21ec9c6f8862ba683874147db824_93663.png" alt="" ></a></div>
  	<div><a href="http://www.naver.com"><img src="<%=cp %>/sool/main_files/09a4c5c6b12ddcdbc0953e2880a47425_34629.png" alt="" ></a></div>
   	<div><a href="http://www.naver.com"><img src="<%=cp %>/sool/main_files/0c8abccf437e402940e582b1909ed910_65523.jpg" alt="" ></a></div>
    <div><a href="http://www.naver.com"><img src="<%=cp %>/sool/main_files/9a1fc9e708537b2444e6b1280e968366_58573.png" alt="" ></a></div>
    <div><a href="http://www.naver.com"><img src="<%=cp %>/sool/main_files/c0492af8e1b91372887ed944d0577f27_15631.jpg" alt="" ></a></div>
    <div><a href="http://www.naver.com"><img src="<%=cp %>/sool/main_files/ee33157ef5ba24859ad57a9986f26ea5_41376.jpg" alt="" ></a></div>

</section>
<script type="text/javascript">


$('.visual').slick({
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 1500,
	});
</script>




</body>
</html>



