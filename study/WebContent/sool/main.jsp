<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0039)https://www.homesool.com/main/index.php -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>홈술닷컴</title>
    
    	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    	
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		
		<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		


    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="csrf-token" content="MTY0NjAyMDQ3Mzg2NDI0MDg5NjI4MTEwNjgzODg0NTM1NzE2NDc2MDk1">


    <meta property="og:type" content="website">
    <meta property="og:title" content="홈술닷컴">
    <meta property="og:url" content="https://www.homesool.com/main/index.php">
    <meta property="og:description" content="홈술닷컴">
    <meta property="og:locale" content="ko_KR">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="홈술닷컴">
    <meta name="twitter:description" content="홈술닷컴">

    <link rel="icon" href="https://www.homesool.com/data/common/favicon.ico" type="image/x-icon">
    
	<link rel="apple-touch-icon" sizes="114x114" href="https://www.homesool.com/data/commonimg/defaultShopIcon144.png">
	<link rel="apple-touch-icon" href="https://www.homesool.com/data/commonimg/defaultShopIcon72.png">

    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/reset.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/common.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/layer.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/layout.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/list.css">
	<link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/button.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/main.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/chosen.css">	
	<link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/swiper-bundle.min.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/custom.css">
    


    <script src="<%=cp %>/sool/main_files/AceCounter_AW.js.다운로드"></script>
    <script src="<%=cp %>/sool/main_files/1135465033646646" async=""></script><script src="<%=cp %>/sool/main_files/identity.js.다운로드" async=""></script><script async="" src="<%=cp %>/sool/main_files/fbevents.js.다운로드"></script><script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/gd_gettext.js.다운로드"></script>
<%--     <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.min.js.다운로드"></script> --%>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/underscore-min.js.다운로드"></script>
   <%--  <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.validate.min.js.다운로드"></script> --%>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/additional-methods.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/numeral.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/accounting.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/money.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/chosen.jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/placeholders.jquery.min.js.다운로드"></script>
    <!--[if gt IE 8]-->
    <script type="text/javascript" src="<%=cp %>/sool//main_files/clipboard.min.js.다운로드"></script>
    <!--[endif]-->
 <%--    <script type="text/javascript" src="<%=cp %>/sool//main_files/jquery.vticker.js.다운로드"></script> --%>
    <script type="text/javascript" src=".<%=cp %>/sool/main_files/gd_ui.js.다운로드"></script>

    

    <script type="text/javascript" src="<%=cp %>/sool/main_files/gd_common.js.다운로드"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.cookie.js.다운로드"></script>
<%--     <script type="text/javascript" src="<%=cp %>/sool/main_files/gd_popup.js.다운로드"></script> --%>
    <!-- Add script : end -->

    

    <style type="text/css">
        body {
        }

        /* body > #wrap > #header_warp : 상단 영역 */
        #header_warp {
        }

        /* body > #wrap > #container : 메인 영역 */
        #container {
        }

        /* body > #wrap > #footer_wrap : 하단 영역 */
        #footer_wrap {
        }
    </style>

    <script type="text/javascript" src="<%=cp %>/sool/main_files/wcslog.js.다운로드"></script>
<script type="text/javascript" src="<%=cp %>/sool/main_files/naverCommonInflowScript.js.다운로드" id="naver-common-inflow-script"></script>

<!-- Facebook Pixel Code -->
        <script>
        !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
        n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
        document,'script','https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1135465033646646', {}, {'agent':'plgodo'});
        fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1135465033646646&ev=PageView&noscript=1"/></noscript>
        <!-- DO NOT MODIFY -->
        <!-- End Facebook Pixel Code --><script type="text/javascript" charset="UTF-8" src="<%=cp %>/sool/main_files/kp.js.다운로드"></script>
        <script type="text/javascript">
            kakaoPixel('8600996210486851034').pageView();
        </script>
        <!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
        <script language="javascript">
	        var _AceGID=(function(){var Inf=['gtc3.acecounter.com','8080','BS4A45352888202','AW','0','NaPm,Ncisy','ALL','0'];
	        var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ='https://'+Inf[0]+'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	        var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
        </script>
        <!-- AceCounter Log Gathering Script End -->

</head>

<body class="body-main body-index pc">
<div class="top_area"></div>
<div id="wrap">

    <div id="header_warp">
<div id="header">

    <div class="header_top">
        <div class="header_top_cont">
			
			<div class="h1_logo"><!--——--><a href="<%=cp %>/homesool/main.com"><img src="<%=cp %>/sool/main_files/701de34a823ef71ad6950510de136ece_23946.png" alt="상단 로고" title="상단 로고"></a><!--——--></div>
			
			<!-- 햄버거 넣는 부분 ^^ -->
			<a href="#;" class="n_btn_all_menu_open">
			<img alt="전체메뉴" src="<%=cp%>/sool/main_files/hamburger.png"></a>
			
			<!-- 열리는 햄버거 -->
<!-- 		<a href="https://www.homesool.com/main/index.php#;" class="n_btn_all_menu_open">전체카테고리</a> -->
			<div class="n_gnb_allmenu_wrap dn">
				<div class="menu_wrap">
					<div class="menu01">
						<p><a href="https://www.homesool.com/mypage/index.php"><img src="<%=cp %>/sool/main_files/allmenu_mypage.png" alt="">마이페이지</a></p> 
						<p><a href="https://www.homesool.com/mypage/shipping.php"><img src="<%=cp %>/sool/main_files/allmenu_addr.png" alt="">배송지관리</a></p>
						<p><a href="https://www.homesool.com/service/index.php"><img src="<%=cp %>/sool/main_files/allmenu_cscenter.png" alt="">고객센터</a></p>
					</div>
						<div class="menu02">
						<dl>
							<dt><a href="">홈술고르기</a></dt>
							<dd><a href="">막걸리</a></dd>  
							<dd><a href="">증류주/소주/리큐르</a></dd> 
							<dd><a href="">약주/청주</a></dd> 
							<dd><a href="">와인/과실주</a></dd>
							<dd><a href="">홈닷푸드</a></dd>
						</dl>
							<dl>
								<dt><a href="">Best홈술</a></dt>
								<dd><a href="">신제품</a></dd>
								<dd><a href="">베스트</a></dd>
								<dd><a href="">추천홈술</a></dd>
								<dd><a href="">이달의 혜택</a></dd>
							</dl> 
						<dl>
							<dt><a href="">홈술가이드</a></dt>
							<dd><a href="">홈술 멤버십</a></dd>
							<dd><a href="">구독 홈술 가이드</a></dd>
							<dd><a href="">배송유형별 안내</a></dd>
						</dl> 
						<dl>
							<dt><a href="">고객센터</a></dt>
							<dd><a href="">공지사항</a></dd>
							<dd><a href="">1:1문의하기</a></dd>
							<dd><a href="">FAQ</a></dd>
						</dl>  
					</div>
				</div>
				</div>
			</div>
			    
			    <!-- 메인 메뉴들 ^^ -->
		<ul class="gnb_new"> 
				<li><a href="<%=cp%>/homesool/list_p.com">홈술고르기</a></li>
		
				<li><a href="<%=cp%>/homesool/guide.com">홈술가이드</a></li>
				<li><a href="<%=cp%>/homesool/csCenter.com">고객센터 </a></li>				 
				<!-- <li><a href="#">라이브 홈술</a></li> -->
			</ul>
			 
            <div class="hd_right">
				<ul class="top_member_box">
				
				<!-- 로그인 회원가입 고객센터 링크 연결 ^^ --> 
				
				<c:choose>
	<c:when test="${empty sessionScope.customInfos.user_id }">
		<li><a href="<%=cp%>/homesool/login.com">Login</a></li>
        <li><a href="<%=cp%>/homesool/create1.com">Join</a></li>
	</c:when>
	<c:otherwise>
		  
		<li><a href="<%=cp%>/homesool/logout.com">Logout</a></li>
	</c:otherwise>
</c:choose>
				
				
            	     
            	        <!--<span class="accent">
            	            <span><strong>2,000 P</strong></span>
            	        </span>-->
            	    </li>
            	    
            	    <li><a href="<%=cp%>/homesool/csCenter.com">CS Center</a></li>
            	</ul>
				<!-- 검색 폼 -->
				<div class="top_search_btn">
                    <span>&nbsp;</span>
                    <img src="<%=cp %>/sool/main_files/btn_top_search.png" alt="">
                </div>
                <!-- //top_text_cont -->
                
<!-- 애매 -->
				<div class="top_search" style="display:none;">
    <form name="frmSearchTop" id="frmSearchTop" action="https://www.homesool.com/goods/goods_search.php" method="get" novalidate="novalidate">
        <fieldset>
            <legend>검색폼</legend> 
            <div class="top_search_cont">
				<div class="top_search_tit">궁금하신 내용을 검색해주세요.</div>
                <div class="top_text_cont">
                    <input type="text" id="search_form" name="keyword" class="top_srarch_text" title="오늘 드시고 싶은 술은 무엇인가요" placeholder="오늘 드시고 싶은 술은 무엇인가요" autocomplete="off">
                    <input type="image" src="<%=cp %>/sool/main_files/btn_search35.png" id="btnSearchTop" class="btn_top_srarch" title="검색" value="검색" alt="검색">
                </div>
                <!-- //top_text_cont -->
                <div class="search_cont">
                    <input type="hidden" name="recentCount" value="10">

                    <!-- //recom_box -->

                    <div class="recent_box_wrap">
                    	<div class="recent_box">
                    	    <dl class="js_recent_area">
                    	        <dt>최근검색어</dt>
                    	        <dd>
                    	            <ul class="js_recent_list">
                    	                <li>
                    	                    <a href="https://www.homesool.com/goods/goods_search.php?keyword=%EB%8A%90%EB%A6%B0%EB%A7%88%EC%9D%84%EB%A7%89%EA%B1%B8%EB%A6%AC">느린마을막걸리</a>
                    	                    <span><button type="button" class="btn_top_search_del" data-recent-keyword="느린마을막걸리">
                    	                        <img src="<%=cp %>/sool/main_files/btn_top_search_del.png" alt="삭제"></button>
                    	                    </span>
                    	                </li>
                    	                <li>
                    	                    <a href="https://www.homesool.com/goods/goods_search.php?keyword=%EC%A6%9D%EB%A5%98%EC%A3%BC">증류주</a>
                    	                    <span><button type="button" class="btn_top_search_del" data-recent-keyword="증류주">
                    	                        <img src="<%=cp %>/sool/main_files/btn_top_search_del.png" alt="삭제"></button>
                    	                    </span>
                    	                </li>
                    	            </ul>
                    	        </dd>
                    	    </dl>
                    	</div>
                    	<!-- //recent_box -->
                    	<div class="seach_top_all">
						<button type="button" class="btn_top_search_all_del"><strong>전체삭제</strong></button>                    	    <!-- <button type="button" class="btn_top_search_close"><strong>닫기</strong></button> -->
                    	</div>
                    	<!-- //seach_top_all -->
					</div>
					
					
					<div class="recent_box_wrap mt40"> 
						<div class="recent_box">
                    	    <dl class="js_recent_area">
                    	        <dt>인기검색어</dt> 
                    	        <dd>
                    	            <ul class="js_recent_list"> 
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EB%8A%90%EB%A6%B0%EB%A7%88%EC%9D%84%EB%A7%89%EA%B1%B8%EB%A6%AC"># 느린마을막걸리</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EC%8B%AC%EC%88%A0"># 심술</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EB%AC%B4%EC%95%84%EC%8A%A4%ED%8C%8C%ED%83%90"># 무아스파탐</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EB%B9%99%ED%83%84%EB%B3%B5"># 빙탄복</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EC%A6%9D%EB%A5%98%EC%A3%BC"># 증류주</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%ED%95%B4%EC%B0%BD%EB%A7%89%EA%B1%B8%EB%A6%AC"># 해창막걸리</a></li> 	
                    	            </ul>
                    	        </dd> 
                    	    </dl>
                    	</div>  
			 
					</div>
                </div>
                <!-- //search_cont -->
            </div>
            <!-- //top_search_cont -->
        </fieldset>
    </form>
	<div class=""><a href="https://www.homesool.com/main/index.php#;" class="close"><img src="<%=cp %>/sool/main_files/btn_close38.png" alt="닫기"></a></div>
</div>
<!-- //top_search -->
<!-- 마이페이지 장바구니 부분 ^^ -->

				<!-- 검색 폼 -->
            	<ul class="icon_util">	   
            		<li>
            	        <a href="<%=cp %>/homesool/mypage.com" class="icon_mypage">
            	        	<img src="<%=cp%>/sool/main_files/btn_top_mypage.png">
            	        </a>
            	    </li>
            	    <li>
            	    <a href="<%=cp %>/homesool/basket.com" class="icon_cart">
            	    	<img src="<%=cp%>/sool/main_files/btn_top_cart.png">
            	        
            	     <strong>0</strong> </a> 
            	    </li>	
            	</ul>
				<div class="right_coupon">
					<a href="https://www.homesool.com/mypage/coupon.php"><em>00</em><span>홈술쿠폰</span></a>
				</div>
			</div> 
        </div>
        <!-- //header_top_cont -->
    </div>
    <!-- //header_top --> 
</div>


<!-- 튜닝 : 당일 배송 지역 검색 2021-08-11 -->
<div class="ly_delivery_possible dn">	 
	<div class="ly_bg"></div>
	<div class="ly_content">
		<h1>당일배송 가능지역 조회 </h1>
		<div>
			<div class="search_area">
				<a href="javascript:void(0)" id="btnPostcodeHeader">우편번호로 검색</a>
				<p id="mesh_delivery_possible_message">[우편번호로 검색] 버튼을 눌러 당일배송 가능 지역을 조회할 수 있습니다.</p>
				
				<input type="hidden" name="meshZonecode" readonly="readonly" value="">
				<input type="hidden" name="meshZipcode" readonly="readonly" value="">

			</div>
			<div class="center mt20 fc_red">* 관공서/학교/병원/시장/공단지역/산간지역/백화점/군부대 등 배송불가</div>
			<div class="btn_area mt50">
				<a href="javascript:void(0)" class="mesh_delivery_possible_ly_close">취소</a>	
			</div>
		</div>
		<button class="close ">닫기</button>
	</div>
</div>

<script>
	$(document).ready(function () {
		$('.icon_location').click(function(){
			$('.ly_delivery_possible').removeClass('dn');  
		});
		$('.ly_delivery_possible .close').click(function(){
			$('input[name="meshZonecode"]').val('');
			$('input[name="meshZipcode"]').val('');
			$('#mesh_delivery_possible_message').text('[우편번호로 검색] 버튼을 눌러 배송 가능 지역을 조회할 수 있습니다.');
			$('.ly_delivery_possible').addClass('dn');  
		});

		$('.mesh_delivery_possible_ly_close').click(function(){
			$('input[name="meshZonecode"]').val('');
			$('input[name="meshZipcode"]').val('');
			$('#mesh_delivery_possible_message').text('[우편번호로 검색] 버튼을 눌러 배송 가능 지역을 조회할 수 있습니다.');
			$('.ly_delivery_possible').addClass('dn');
		});

		$('#btnPostcodeHeader').click(function (e) {
            e.preventDefault();
            gd_postcode_search2('meshZonecode', 'meshAddress', 'meshZipcode');
        });


	});

	// 우편번호 팝업에서 콜백받는 함수
    function postcode_callback() {
		var zonecode = $('input[name="meshZonecode"]').val();
		var zipcode = $('input[name="meshZipcode"]').val();

		if(zonecode == '' && zipcode) {
			zonecode = zipcode.replace('-', '');
		}
		zonecode = zonecode.replace('-', '');
				
		var params = {
            mode: 'check_area_delivery_possible',
			newZipCode: zonecode,
			roundNumber: '1',
			transportServiceType: 'ONE_DAY_DELIVERY',
        };
		
		$.ajax({
			method: "POST",
			cache: false,
			url: "../share/mesh_ps.php",
			data: params,
			success: function (data) {

				// 당일배송 가능 지역
				if(data.delivery_possible_data.errorFl === false && data.delivery_possible_data.statusCode == '000'){
					$('#mesh_delivery_possible_message').html('조회하신 지역은 <span class="fc_blue">당일배송 가능지역</span>입니다.');
				// 당일배송 불가능 지역
				}else{
					$('#mesh_delivery_possible_message').html('조회하신 지역은 <span class="fc_red">당일배송 불가지역</span>입니다.');
				}
			}
		});
		

	}
</script>
    </div>
    <!-- //header_warp -->

    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <!-- //location_wrap -->

	
	 
  	 
    	 
 	 

            <div class="sub_content">

                <!-- //side_cont -->



<div class="main_visual">
   
   <style type="text/css">
			.visual { position: relative;}
			.visual button { position: absolute; z-index: 10; top: 50%; transform: translateY(-50%);
			width: 71px; height: 71px; border-radius: 100%; background: rgba(255,255,255,0.5); border: none;}
			.visual button:before { font-family: 'xeicon'; color: #fff; font-size: 45px; }
			.visual button.slick-prev { left: 50px; font-size: 0; color: transparent; }
			.visual button.slick-prev:before { content: "\e93d";}
			.visual button.slick-next { right: 50px; font-size: 0; color: transparent; }	
			.visual button.slick-next:before { content: "\e940"; }
		</style>

<!-- slick 수정-->
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






	<div class="delivery">
	<div class="w1600">
		<div class="type_bx "> 
			<div class="typetit typetit01 serif">오늘홈술</div>
			<div class="location_box" id="tab_01">
				<p class="tit ">서울/경기 </p>
				<p class="time "><em id="main_serif_seoul" class="serif"> 00:59:23 </em><span class="noti">지금 주문 시, 2022-02-28(월) 도착예정</span> </p>
				<p class="state closeup">마감임박</p>

			</div>			
			<!-- <div class="location_box">
				<p class="tit ">전국<span class="playfair">All</span></p>
				<p class="time playfair"><em id="main_serif_seoul">00:00:00 </em></p>
				<p class="state">주문가능</p>
			</div>  -->
			<div class="typetit typetit02 serif">일반홈술 </div>
			<div class="location_box" id="tab_02">
				<p class="tit ">전국 </p>
				<p class="time "><em id="main_serif_all" class="serif"> 23:59:23 </em>
				<span class="noti2">지금 주문 시, 2022-03-01(화) 출고</span></p>
				<p class="state">주문가능</p>
			</div>	 
		</div> 
	</div> 
</div> 


<script>

	function deliveryTimerMain(duration, deliveryType) {
		
        var timer = duration;
        var pres, days ,hours, minutes, seconds;

        var interval = setInterval(function(){
            days	= parseInt(timer / 86400, 10);
            hours	= parseInt(((timer % 86400 ) / 3600), 10);
            minutes = parseInt(((timer % 3600 ) / 60), 10);
            seconds = parseInt(timer % 60, 10);

			pres = '';

            if(days ==0) {

            } else {
                days 	= days < 10 ? "0" + days : days;

				pres = days + "일";
            }

			if(deliveryType == 'today'){
				var state = $('#tab_01').find('p.state');
			}else{
				var state = $('#tab_02').find('p.state');
			}
			if(hours < 2){
				state.addClass('closeup').text('마감임박');
			}else{
				state.removeClass('closeup').text('주문가능');
			}

			
            hours 	= hours < 10 ? "0" + hours : hours;
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;
			
			if(deliveryType == 'today'){
	            $('#main_serif_seoul').text(pres + " " + hours + ":"+minutes + ":"+seconds + " ");
			}else{
				$('#main_serif_all').text(pres + " " + hours + ":"+minutes + ":"+seconds + " ");
			}
			
            if (--timer < 0) {
				
				jQuery.ajax({
					url : '/main/get_delivery_time.php',
					type : 'POST',
					dataType:'json',
					data: {'deliveryType' : deliveryType},
					async: false,					
					success : function(result) {	
						
						timer = result.nextDuration;	
					
						if(deliveryType == 'today'){
							var delivery_text = '지금 주문 시, ' + result.nextDate + ' 도착예정';
							$('div.delivery').find('span.noti').text(delivery_text);
						}else{
							var delivery_text = '지금 주문 시, ' + result.nextDate + ' 출고';	
							$('div.delivery').find('span.noti2').text(delivery_text);
						}


						
					}

				});

                //clearInterval(interval);
            }
        }, 1000);
    }

	deliveryTimerMain("3927", 'today');
	deliveryTimerMain("86727", 'normal');

</script>
</div>
</div>
<!-- //main_visual -->
<div class="main_content"> 

    <div class="main_collection">
		<div class="banner">
		<a href="https://www.homesool.com/goods/collection.php">
		<img src="<%=cp %>/sool/main_files/e44d97f795c6866f54a5672c667348c2_29594.png" alt="메인 중간 배너1" title="메인 중간 배너1"></a></div> 
		<div class="items">
			<div class="main_tit ">
				<h3 class="serif">홈술컬렉션</h3>	   
				<p>홈술닷컴 큐레이터 엄선,이달의 컬렉션  </p>
			</div> 
        	<div class="mt30">
			<!-- 메인 상품 노출 -->
		
<div class="goods_list main_wrap_1">
    <div class="goods_list_tit">
        <h3>홈술 컬렉션</h3>

        
        <div class="btn_goods_more">
            <a href="https://www.homesool.com/goods/goods_main.php?sno=1" class="btn_goods_view_more">+ 더보기</a>
        </div>
        
    </div>
    <div class="goods_list_cont goods_content_1">
    
    
<div class="item_slide_horizontal swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">

    <ul class="slide_horizontal_1 swiper-wrapper" id="swiper-wrapper-4302e2369b7cd8a10" aria-live="polite" style="transform: translate3d(-1785px, 0px, 0px); transition-duration: 0ms;"><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="0" role="group" aria-label="1 / 21" style="margin-right: 25px;">

            <div class="item_cont">


<!-- 홈술컬렉션 무 아스파탐 막걸리 큰 이미지 하이퍼링크 -->
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000206_wlist_022.png" width="280" alt="(기한임박) 해창막걸리 12도 3입" title="(기한임박) 해창막걸리 12도 3입" class="middle">
                    </a>
                </div>
                
                
                
                
                
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">(기한임박) 해창막걸리 12도 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">36,900원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">41,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        <img src="<%=cp %>/sool/main_files/goods_icon_order.gif" alt="주문폭주" title="주문폭주" class="middle"> 
                        <img src="<%=cp %>/sool/main_files/good_icon_event.gif" alt="이벤트상품" title="이벤트상품" class="middle"> 
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->
                </div>
               
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="1" role="group" aria-label="2 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/11_wlist_055.jpg" width="280" alt="느린마을막걸리 5입" title="느린마을막걸리 5입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">19,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="2" role="group" aria-label="3 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000136&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000136_wlist_087.jpg" width="280" alt="無아스파탐 비기너" title="無아스파탐 비기너" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000136&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">無아스파탐 비기너</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">20,400원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3" role="group" aria-label="4 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000137&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000137_wlist_049.jpg" width="280" alt="無아스파탐 드라이" title="無아스파탐 드라이" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000137&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">無아스파탐 드라이</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">22,600원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide item_soldout swiper-slide-duplicate" data-swiper-slide-index="4" role="group" aria-label="5 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/82_wlist_021.jpg" width="280" alt="빙탄복 5입" title="빙탄복 5입" class="middle">
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">빙탄복 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">21,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/main_files/icon_soldout.gif" alt="품절">
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="5" role="group" aria-label="6 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000154&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000154_wlist_061.jpg" width="280" alt="탄산가득 스파클링 음료술" title="탄산가득 스파클링 음료술" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000154&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">탄산가득 스파클링 음료술</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">16,830원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">18,700원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
            
            
            
            
            
            
            
            
            
        </li><li class="swiper-slide swiper-slide-duplicate swiper-slide-prev" data-swiper-slide-index="6" role="group" aria-label="7 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/78_wlist_026.jpg" width="280" alt="느린마을 복분자꽃세트" title="느린마을 복분자꽃세트" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 복분자꽃세트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">18,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide swiper-slide-active" data-swiper-slide-index="0" role="group" aria-label="8 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000206_wlist_022.png" width="280" alt="(기한임박) 해창막걸리 12도 3입" title="(기한임박) 해창막걸리 12도 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">(기한임박) 해창막걸리 12도 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">36,900원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">41,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        <img src="<%=cp %>/sool/main_files/goods_icon_order.gif" alt="주문폭주" title="주문폭주" class="middle"> <img src="<%=cp %>/sool/main_files/good_icon_event.gif" alt="이벤트상품" title="이벤트상품" class="middle"> 
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide swiper-slide-next" data-swiper-slide-index="1" role="group" aria-label="9 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/11_wlist_055.jpg" width="280" alt="느린마을막걸리 5입" title="느린마을막걸리 5입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">19,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="2" role="group" aria-label="10 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000136&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000136_wlist_087.jpg" width="280" alt="無아스파탐 비기너" title="無아스파탐 비기너" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000136&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">無아스파탐 비기너</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">20,400원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="3" role="group" aria-label="11 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000137&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000137_wlist_049.jpg" width="280" alt="無아스파탐 드라이" title="無아스파탐 드라이" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000137&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">無아스파탐 드라이</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">22,600원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide item_soldout" data-swiper-slide-index="4" role="group" aria-label="12 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/82_wlist_021.jpg" width="280" alt="빙탄복 5입" title="빙탄복 5입" class="middle">
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">빙탄복 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">21,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/main_files/icon_soldout.gif" alt="품절">
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="5" role="group" aria-label="13 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000154&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000154_wlist_061.jpg" width="280" alt="탄산가득 스파클링 음료술" title="탄산가득 스파클링 음료술" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000154&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">탄산가득 스파클링 음료술</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">16,830원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">18,700원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide swiper-slide-duplicate-prev" data-swiper-slide-index="6" role="group" aria-label="14 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/78_wlist_026.jpg" width="280" alt="느린마을 복분자꽃세트" title="느린마을 복분자꽃세트" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 복분자꽃세트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">18,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
    <li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="0" role="group" aria-label="15 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000206_wlist_022.png" width="280" alt="(기한임박) 해창막걸리 12도 3입" title="(기한임박) 해창막걸리 12도 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">(기한임박) 해창막걸리 12도 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">36,900원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">41,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        <img src="<%=cp %>/sool/main_files/goods_icon_order.gif" alt="주문폭주" title="주문폭주" class="middle"> <img src="<%=cp %>/sool/main_files/good_icon_event.gif" alt="이벤트상품" title="이벤트상품" class="middle"> 
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="1" role="group" aria-label="16 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/11_wlist_055.jpg" width="280" alt="느린마을막걸리 5입" title="느린마을막걸리 5입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">19,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="2" role="group" aria-label="17 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000136&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000136_wlist_087.jpg" width="280" alt="無아스파탐 비기너" title="無아스파탐 비기너" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000136&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">無아스파탐 비기너</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">20,400원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3" role="group" aria-label="18 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000137&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000137_wlist_049.jpg" width="280" alt="無아스파탐 드라이" title="無아스파탐 드라이" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000137&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">無아스파탐 드라이</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">22,600원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide item_soldout swiper-slide-duplicate" data-swiper-slide-index="4" role="group" aria-label="19 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/82_wlist_021.jpg" width="280" alt="빙탄복 5입" title="빙탄복 5입" class="middle">
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">빙탄복 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">21,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/main_files/icon_soldout.gif" alt="품절">
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="5" role="group" aria-label="20 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000154&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000154_wlist_061.jpg" width="280" alt="탄산가득 스파클링 음료술" title="탄산가득 스파클링 음료술" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000154&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">탄산가득 스파클링 음료술</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">16,830원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">18,700원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="6" role="group" aria-label="21 / 21" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/78_wlist_026.jpg" width="280" alt="느린마을 복분자꽃세트" title="느린마을 복분자꽃세트" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=1%5E%7C%5E%ED%99%88%EC%88%A0+%EC%BB%AC%EB%A0%89%EC%85%98%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 복분자꽃세트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">18,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li></ul>
	<div class="swiper-pagination swiper-pagination-progressbar"><span class="swiper-pagination-progressbar-fill" style="transform: translate3d(0px, 0px, 0px) scaleX(0.142857) scaleY(1); transition-duration: 300ms;"></span></div>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
    </div>
</div>











































<script type="text/javascript">
    <!--
    var keyValue1 = '1';
    var key1 = {
        html: 'html' + keyValue1,
        page: 'page' + keyValue1
    };
    var gdStorage1 = loadSession(key1.html);
    var page1 = loadSession(key1.page);
    $(document).ready(function() {
        if (gdStorage1) {
            $('.goods_content_1').html(gdStorage1);
            if (page1) {
                $('.main_wrap_1 .btn_goods_view_down_more').attr('data-page',page1);
            }
        }
        $('.main_wrap_1 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_1($(this).data('page'));
        });
    });

    function gd_get_list_1(page) {
        $.get('../goods/goods_main.php', {'mode' : 'get_main', 'more' : page, 'sno' : '1', 'groupSno' : ''}, function (data) {
            $(".goods_content_1").html(data);
            saveSession(key1.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_1 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key1.page, parseInt(page)+1);
                $('.main_wrap_1 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>
<!-- 메인 상품 노출 -->
			        <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-4302e2369b7cd8a10">
        <img src="<%=cp %>/sool/main_files/main_swiper_next.png"></div>
			</div>
		</div>
    </div> 
	
	 	 
	<div class="main_timesale">   
		<div class="main_tit ">
			<h3 class="serif"><a href="https://www.homesool.com/goods/special_price.php">반짝홈술</a></h3>	   
			<p>반짝하고 찾아오는 시간,수량한정 특가 </p>
		</div> 
		<div class="w1600 mt30">
			
<div class="goods_list main_wrap_13">
    <div class="goods_list_tit">
        <h3>반짝 홈술</h3>
    </div>
    <div class="goods_list_cont goods_content_13">
<div class="item_slide_horizontal swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">
    <ul class="slide_horizontal_13 swiper-wrapper" id="swiper-wrapper-6d6e276b8b8b73a8" aria-live="polite" style="transform: translate3d(-1220px, 0px, 0px); transition-duration: 0ms;"><li class="swiper-slide item_soldout swiper-slide-duplicate swiper-slide-prev" data-swiper-slide-index="9" role="group" aria-label="1 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000167&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/11_main_061.jpg" width="280" alt="(기한임박) 느린마을막걸리 5입" title="(기한임박) 느린마을막걸리 5입" class="middle">
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000167&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">(기한임박) 느린마을막걸리 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">17,910원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">19,900원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/main_files/icon_soldout.gif" alt="품절">
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->
					<div class="stock"><span>0</span>개 남음</div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide swiper-slide-active" data-swiper-slide-index="0" role="group" aria-label="2 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000206_main_079.jpg" width="280" alt="(기한임박) 해창막걸리 12도 3입" title="(기한임박) 해창막걸리 12도 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">(기한임박) 해창막걸리 12도 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">36,900원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">41,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        <img src="<%=cp %>/sool/main_files/goods_icon_order.gif" alt="주문폭주" title="주문폭주" class="middle"> <img src="<%=cp %>/sool/main_files/good_icon_event.gif" alt="이벤트상품" title="이벤트상품" class="middle"> 
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide swiper-slide-next" data-swiper-slide-index="1" role="group" aria-label="3 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000102&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000102_main_062.jpg" width="280" alt="해창막걸리 12도" title="해창막걸리 12도" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000102&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">해창막걸리 12도</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">13,950원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">15,500원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->
					<div class="stock"><span>6</span>개 남음</div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="2" role="group" aria-label="4 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000182&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000182_main_079.jpg" width="280" alt="느린마을 누룩장 통삼겹 스테이크" title="느린마을 누룩장 통삼겹 스테이크" class="middle">
                        <span class="icon_time_sale"><img src="<%=cp %>/sool/main_files/icon_time_sale.png" alt="타임세일"></span>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000182&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 누룩장 통삼겹 스테이크</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            17,900원 <br>
                            <span class="time_sale_cost_r" style="padding-top:3px; display:-webkit-inline-box;">16,110원 </span>
<span class="time_sale_text">11시간 남음</span>                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="3" role="group" aria-label="5 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000184&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000184_main_013.jpg" width="280" alt="느린마을 누룩장 닭다리살 스테이크" title="느린마을 누룩장 닭다리살 스테이크" class="middle">
                        <span class="icon_time_sale"><img src="<%=cp %>/sool/main_files/icon_time_sale.png" alt="타임세일"></span>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000184&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 누룩장 닭다리살 스테이크</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            14,900원 <br>
                            <span class="time_sale_cost_r" style="padding-top:3px; display:-webkit-inline-box;">13,410원 </span>
<span class="time_sale_text">11시간 남음</span>                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="4" role="group" aria-label="6 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000188&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000188_main_023.jpg" width="280" alt="느린마을 매콤샤브샤브" title="느린마을 매콤샤브샤브" class="middle">
                        <span class="icon_time_sale"><img src="<%=cp %>/sool/main_files/icon_time_sale.png" alt="타임세일"></span>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000188&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 매콤샤브샤브</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            15,900원 <br>
                            <span class="time_sale_cost_r" style="padding-top:3px; display:-webkit-inline-box;">14,310원 </span>
<span class="time_sale_text">11시간 남음</span>                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="5" role="group" aria-label="7 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000186&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000186_main_02.jpg" width="280" alt="느린마을 메로간장조림" title="느린마을 메로간장조림" class="middle">
                        <span class="icon_time_sale"><img src="<%=cp %>/sool/main_files/icon_time_sale.png" alt="타임세일"></span>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000186&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 메로간장조림</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            20,900원 <br>
                            <span class="time_sale_cost_r" style="padding-top:3px; display:-webkit-inline-box;">18,810원 </span>
<span class="time_sale_text">11시간 남음</span>                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="6" role="group" aria-label="8 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000190&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000190_main_017.jpg" width="280" alt="느린마을 또쌈치즈불닭" title="느린마을 또쌈치즈불닭" class="middle">
                        <span class="icon_time_sale"><img src="<%=cp %>/sool/main_files/icon_time_sale.png" alt="타임세일"></span>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000190&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 또쌈치즈불닭</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            14,900원 <br>
                            <span class="time_sale_cost_r" style="padding-top:3px; display:-webkit-inline-box;">13,410원 </span>
<span class="time_sale_text">11시간 남음</span>                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="7" role="group" aria-label="9 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000100&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000100_main_099.jpg" width="280" alt="느린마을 양념가오리무침" title="느린마을 양념가오리무침" class="middle">
                        <span class="icon_time_sale"><img src="<%=cp %>/sool/main_files/icon_time_sale.png" alt="타임세일"></span>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000100&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 양념가오리무침</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            13,500원 <br>
                            <span class="time_sale_cost_r" style="padding-top:3px; display:-webkit-inline-box;">12,150원 </span>
<span class="time_sale_text">11시간 남음</span>                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="8" role="group" aria-label="10 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000118&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000118_main_030.jpg" width="280" alt="느린마을 소고기해장생라면" title="느린마을 소고기해장생라면" class="middle">
                        <span class="icon_time_sale"><img src="<%=cp %>/sool/main_files/icon_time_sale.png" alt="타임세일"></span>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000118&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 소고기해장생라면</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            9,900원 <br>
                            <span class="time_sale_cost_r" style="padding-top:3px; display:-webkit-inline-box;">8,910원 </span>
<span class="time_sale_text">11시간 남음</span>                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide item_soldout swiper-slide-duplicate-prev" data-swiper-slide-index="9" role="group" aria-label="11 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000167&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/11_main_061.jpg" width="280" alt="(기한임박) 느린마을막걸리 5입" title="(기한임박) 느린마을막걸리 5입" class="middle">
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000167&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">(기한임박) 느린마을막걸리 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">17,910원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">19,900원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/main_files/icon_soldout.gif" alt="품절">
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->
					<div class="stock"><span>0</span>개 남음</div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
    <li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="0" role="group" aria-label="12 / 12" style="width: 1200px; margin-right: 20px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000206_main_079.jpg" width="280" alt="(기한임박) 해창막걸리 12도 3입" title="(기한임박) 해창막걸리 12도 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000206&amp;mtn=13%5E%7C%5E%EB%B0%98%EC%A7%9D+%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">(기한임박) 해창막걸리 12도 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">36,900원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">41,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        <img src="<%=cp %>/sool/main_files/goods_icon_order.gif" alt="주문폭주" title="주문폭주" class="middle"> <img src="<%=cp %>/sool/main_files/good_icon_event.gif" alt="이벤트상품" title="이벤트상품" class="middle"> 
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li></ul>
	<div class="swiper-pagination"></div>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue13 = '13';
    var key13 = {
        html: 'html' + keyValue13,
        page: 'page' + keyValue13
    };
    var gdStorage13 = loadSession(key13.html);
    var page13 = loadSession(key13.page);
    $(document).ready(function() {
        if (gdStorage13) {
            $('.goods_content_13').html(gdStorage13);
            if (page13) {
                $('.main_wrap_13 .btn_goods_view_down_more').attr('data-page',page13);
            }
        }
        $('.main_wrap_13 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_13($(this).data('page'));
        });
    });

    function gd_get_list_13(page) {
        $.get('../goods/goods_main.php', {'mode' : 'get_main', 'more' : page, 'sno' : '13', 'groupSno' : ''}, function (data) {
            $(".goods_content_13").html(data);
            saveSession(key13.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_13 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key13.page, parseInt(page)+1);
                $('.main_wrap_13 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>

			<div class="next swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-6d6e276b8b8b73a8"></div>
			<div class="prev swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-6d6e276b8b8b73a8"></div>
		</div>  
    </div>
	
	<div class="main_recommend">  
		<div class="main_tit ">
			<h3 class="serif"><a href="https://www.homesool.com/goods/promotion_list.php">추천홈술</a></h3>	   
			<p>홈술추천! 테마 기획전</p>
		</div> 
		<div class="main_recommend_list mt30 slick-initialized slick-slider slick-dotted" role="toolbar"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button> 
			<div aria-live="polite" class="slick-list draggable" style="padding: 0px 50px;"><div class="slick-track" style="opacity: 1; width: 50000px; transform: translate3d(-590px, 0px, 0px);" role="listbox"><div class="slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" tabindex="-1">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000050&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000050_wlist_084.jpg" width="280" alt="술샘16" title="술샘16" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000050&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">술샘16</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">11,400원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">12,000원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000050&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000051&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000051_wlist_094.jpg" width="280" alt="술샘19" title="술샘19" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000051&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">술샘19</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">11,400원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">12,000원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000051&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide slick-current slick-active slick-center" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000157&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="0">
				<img src="<%=cp %>/sool/main_files/1000000157_wlist_025.jpg" width="280" alt="느린마을약주" title="느린마을약주" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000157&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="0">
					<strong class="item_name" style="direction:ltr;">느린마을약주</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					10%									
					</span> 

				<strong class="item_price">
					<span style="">22,410원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">24,900원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000157&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="0">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide01">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000200&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000200_wlist_06.jpg" width="280" alt="치키피치" title="치키피치" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000200&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">치키피치</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">6,555원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">6,900원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000200&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide" data-slick-index="2" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide02">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000132&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000132_wlist_086.jpg" width="280" alt="요새로제" title="요새로제" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000132&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">요새로제</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">17,005원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">17,900원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000132&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide03">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000084&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000084_wlist_066.jpg" width="280" alt="와쥬블루" title="와쥬블루" class="middle">
				<strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000084&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">와쥬블루</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">17,005원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">17,900원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000084&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide" data-slick-index="4" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide04">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000079&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000079_wlist_050.jpg" width="280" alt="붉은 원숭이" title="붉은 원숭이" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000079&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">붉은 원숭이</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">8,550원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">9,000원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000079&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide" data-slick-index="5" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide05">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000058&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000058_wlist_091.jpg" width="280" alt="혼디주" title="혼디주" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000058&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">혼디주</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">7,885원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">8,300원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000058&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide" data-slick-index="6" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide06">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000154&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000154_wlist_061.jpg" width="280" alt="탄산가득 스파클링 음료술" title="탄산가득 스파클링 음료술" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000154&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">탄산가득 스파클링 음료술</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					10%									
					</span> 

				<strong class="item_price">
					<span style="">16,830원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">18,700원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000154&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide" data-slick-index="7" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide07">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000053&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000053_wlist_035.jpg" width="280" alt="서설" title="서설" class="middle">
				<strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000053&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">서설</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">14,250원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">15,000원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000053&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide" data-slick-index="8" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide08">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000050&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000050_wlist_084.jpg" width="280" alt="술샘16" title="술샘16" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000050&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">술샘16</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">11,400원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">12,000원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000050&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide" data-slick-index="9" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide09">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000051&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000051_wlist_094.jpg" width="280" alt="술샘19" title="술샘19" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000051&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">술샘19</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">11,400원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">12,000원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000051&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide slick-cloned slick-center" data-slick-index="10" aria-hidden="true" tabindex="-1">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000157&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000157_wlist_025.jpg" width="280" alt="느린마을약주" title="느린마을약주" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000157&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">느린마을약주</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					10%									
					</span> 

				<strong class="item_price">
					<span style="">22,410원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">24,900원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000157&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div><div class="slick-slide slick-cloned" data-slick-index="11" aria-hidden="true" tabindex="-1">
	<div class="item_cont">
		<div class="item_photo_box">
			<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000200&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
				<img src="<%=cp %>/sool/main_files/1000000200_wlist_06.jpg" width="280" alt="치키피치" title="치키피치" class="middle">

				<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
			</a>
		</div>
		<!-- //item_photo_box -->
		<div class="item_info_cont">
			<div class="item_tit_box">
				<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000200&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">
					<strong class="item_name" style="direction:ltr;">치키피치</strong>
				</a>
			</div>
			<!-- //item_tit_box -->
			<div class="item_money_box">
					<span class="per">										
					5%									
					</span> 

				<strong class="item_price">
					<span style="">6,555원 </span>
				</strong>
				<span style="color:#888; text-decoration:line-through;">6,900원 </span>
			</div>
			<!-- //item_money_box -->
			<div class="view_more"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000200&amp;mtn=14%5E%7C%5E%EC%B6%94%EC%B2%9C+%ED%99%88%EC%88%A0%5E%7C%5En" tabindex="-1">VIEW MORE</a></div>
			<!-- //item_number_box --> 
		</div>
		<!-- //item_info_cont -->
	</div>
</div></div></div>










		<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">Next</button><ul class="slick-dots" style="display: block;" role="tablist"><li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation00" id="slick-slide00"><button type="button" data-role="none" role="button" tabindex="0">1</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation01" id="slick-slide01"><button type="button" data-role="none" role="button" tabindex="0">2</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation02" id="slick-slide02"><button type="button" data-role="none" role="button" tabindex="0">3</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation03" id="slick-slide03"><button type="button" data-role="none" role="button" tabindex="0">4</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation04" id="slick-slide04"><button type="button" data-role="none" role="button" tabindex="0">5</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation05" id="slick-slide05"><button type="button" data-role="none" role="button" tabindex="0">6</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation06" id="slick-slide06"><button type="button" data-role="none" role="button" tabindex="0">7</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation07" id="slick-slide07"><button type="button" data-role="none" role="button" tabindex="0">8</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation08" id="slick-slide08"><button type="button" data-role="none" role="button" tabindex="0">9</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation09" id="slick-slide09"><button type="button" data-role="none" role="button" tabindex="0">10</button></li></ul></div> 
    </div> 
	
	
	<div class="main_subscribe mt120">
		<div class="main_goods_cont">  
			<div class="main_tit ">
				<h3 class="serif"><a href="https://www.homesool.com/goods/hs_subscribe.php">구독홈술</a></h3>	   
				<p>진정한 홈술라이프, 간편한 정기구독</p>
			</div> 
			<div class="item_wrap mt30">
				<div class="banner"><a href="http://pobsmbsool.godomall.com/goods/hs_subscribe.php"><img src="<%=cp %>/sool/main_files/6c8331ae6b892bbb67257e56721cc558_29213.png" alt="메인중간배너2" title="메인중간배너2"></a></div>
				<div class="items">
				<!-- 메인 상품 노출 -->
<div class="goods_list main_wrap_2">
    <div class="goods_list_tit">
        <h3>구독홈술</h3>
    </div>
    <div class="goods_list_cont goods_content_2">
<div class="item_slide_horizontal swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">
    <ul class="slide_horizontal_2 swiper-wrapper" id="swiper-wrapper-222aa447e208ba06" aria-live="polite" style="transform: translate3d(-2805px, 0px, 0px); transition-duration: 0ms;"><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="0" role="group" aria-label="1 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=12&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/12_wlist_041.jpg" width="280" alt="느린마을막걸리 3입" title="느린마을막걸리 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=12&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">13,500원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="1" role="group" aria-label="2 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/11_wlist_055.jpg" width="280" alt="느린마을막걸리 5입" title="느린마을막걸리 5입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">19,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide item_soldout swiper-slide-duplicate" data-swiper-slide-index="2" role="group" aria-label="3 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/82_wlist_021.jpg" width="280" alt="빙탄복 5입" title="빙탄복 5입" class="middle">
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">빙탄복 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">21,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/main_files/icon_soldout.gif" alt="품절">
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3" role="group" aria-label="4 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=119&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/119_wlist_050.jpg" width="280" alt="심술 5입" title="심술 5입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=119&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">심술 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">13,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="4" role="group" aria-label="5 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=68&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/68_wlist_043.jpg" width="280" alt="느린마을증류주 6입" title="느린마을증류주 6입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=68&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을증류주 6입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">16,110원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">17,900원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="5" role="group" aria-label="6 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000163&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000163_wlist_07.jpg" width="280" alt="느린마을소주21 3입" title="느린마을소주21 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000163&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을소주21 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">32,400원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">36,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="6" role="group" aria-label="7 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=54&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/54_wlist_059.jpg" width="280" alt="자자연연3호" title="자자연연3호" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=54&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">자자연연3호</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">22,500원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">22,500원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="7" role="group" aria-label="8 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/78_wlist_026.jpg" width="280" alt="느린마을 복분자꽃세트" title="느린마을 복분자꽃세트" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 복분자꽃세트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">18,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="8" role="group" aria-label="9 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=70&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/70_wlist_043.jpg" width="280" alt="느린마을 막소세트1" title="느린마을 막소세트1" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=70&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 막소세트1</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">13,800원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="9" role="group" aria-label="10 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=14&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/14_wlist_010.jpg" width="280" alt="느린마을막걸리 15입" title="느린마을막걸리 15입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=14&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 15입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">53,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate swiper-slide-prev" data-swiper-slide-index="10" role="group" aria-label="11 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=24&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/24_wlist_078.jpg" width="280" alt="느린마을 옹기막걸리" title="느린마을 옹기막걸리" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=24&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 옹기막걸리</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">35,000원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">35,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide swiper-slide-active" data-swiper-slide-index="0" role="group" aria-label="12 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=12&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/12_wlist_041.jpg" width="280" alt="느린마을막걸리 3입" title="느린마을막걸리 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=12&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">13,500원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide swiper-slide-next" data-swiper-slide-index="1" role="group" aria-label="13 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/11_wlist_055.jpg" width="280" alt="느린마을막걸리 5입" title="느린마을막걸리 5입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">19,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide item_soldout" data-swiper-slide-index="2" role="group" aria-label="14 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/82_wlist_021.jpg" width="280" alt="빙탄복 5입" title="빙탄복 5입" class="middle">
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">빙탄복 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">21,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/main_files/icon_soldout.gif" alt="품절">
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="3" role="group" aria-label="15 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=119&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/119_wlist_050.jpg" width="280" alt="심술 5입" title="심술 5입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=119&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">심술 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">13,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="4" role="group" aria-label="16 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=68&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/68_wlist_043.jpg" width="280" alt="느린마을증류주 6입" title="느린마을증류주 6입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=68&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을증류주 6입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">16,110원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">17,900원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="5" role="group" aria-label="17 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000163&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000163_wlist_07.jpg" width="280" alt="느린마을소주21 3입" title="느린마을소주21 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000163&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을소주21 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">32,400원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">36,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="6" role="group" aria-label="18 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=54&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/54_wlist_059.jpg" width="280" alt="자자연연3호" title="자자연연3호" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=54&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">자자연연3호</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">22,500원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">22,500원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="7" role="group" aria-label="19 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/78_wlist_026.jpg" width="280" alt="느린마을 복분자꽃세트" title="느린마을 복분자꽃세트" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 복분자꽃세트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">18,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="8" role="group" aria-label="20 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=70&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/70_wlist_043.jpg" width="280" alt="느린마을 막소세트1" title="느린마을 막소세트1" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=70&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 막소세트1</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">13,800원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide" data-swiper-slide-index="9" role="group" aria-label="21 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=14&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/14_wlist_010.jpg" width="280" alt="느린마을막걸리 15입" title="느린마을막걸리 15입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=14&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 15입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">53,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li class="swiper-slide swiper-slide-duplicate-prev" data-swiper-slide-index="10" role="group" aria-label="22 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=24&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/24_wlist_078.jpg" width="280" alt="느린마을 옹기막걸리" title="느린마을 옹기막걸리" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=24&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 옹기막걸리</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">35,000원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">35,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
    <li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="0" role="group" aria-label="23 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=12&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/12_wlist_041.jpg" width="280" alt="느린마을막걸리 3입" title="느린마을막걸리 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=12&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">13,500원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="1" role="group" aria-label="24 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/11_wlist_055.jpg" width="280" alt="느린마을막걸리 5입" title="느린마을막걸리 5입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=11&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">19,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide item_soldout swiper-slide-duplicate" data-swiper-slide-index="2" role="group" aria-label="25 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/82_wlist_021.jpg" width="280" alt="빙탄복 5입" title="빙탄복 5입" class="middle">
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=82&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">빙탄복 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">21,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/main_files/icon_soldout.gif" alt="품절">
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3" role="group" aria-label="26 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=119&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/119_wlist_050.jpg" width="280" alt="심술 5입" title="심술 5입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=119&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">심술 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">13,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="4" role="group" aria-label="27 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=68&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/68_wlist_043.jpg" width="280" alt="느린마을증류주 6입" title="느린마을증류주 6입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=68&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을증류주 6입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">16,110원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">17,900원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="5" role="group" aria-label="28 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000163&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000163_wlist_07.jpg" width="280" alt="느린마을소주21 3입" title="느린마을소주21 3입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000163&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을소주21 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 

						
                        <strong class="item_price">
                            <span style="">32,400원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">36,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="6" role="group" aria-label="29 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=54&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/54_wlist_059.jpg" width="280" alt="자자연연3호" title="자자연연3호" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=54&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">자자연연3호</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">22,500원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">22,500원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="7" role="group" aria-label="30 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/78_wlist_026.jpg" width="280" alt="느린마을 복분자꽃세트" title="느린마을 복분자꽃세트" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=78&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 복분자꽃세트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">18,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="8" role="group" aria-label="31 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=70&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/70_wlist_043.jpg" width="280" alt="느린마을 막소세트1" title="느린마을 막소세트1" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=70&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 막소세트1</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">13,800원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="9" role="group" aria-label="32 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=14&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/14_wlist_010.jpg" width="280" alt="느린마을막걸리 15입" title="느린마을막걸리 15입" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=14&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을막걸리 15입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">53,900원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="10" role="group" aria-label="33 / 33" style="margin-right: 25px;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=24&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/24_wlist_078.jpg" width="280" alt="느린마을 옹기막걸리" title="느린마을 옹기막걸리" class="middle">
                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=24&amp;mtn=2%5E%7C%5E%EA%B5%AC%EB%8F%85%ED%99%88%EC%88%A0%5E%7C%5En">
                            <strong class="item_name" style="direction:ltr;">느린마을 옹기막걸리</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">

						
                        <strong class="item_price">
                            <span style="">35,000원 </span>
                        </strong>
                        <span style="color:#888; text-decoration:line-through;">35,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
				
					<!-- 튜닝 : 수량한정특가 2021-08-09 -->

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li></ul>
	<div class="swiper-pagination swiper-pagination-progressbar"><span class="swiper-pagination-progressbar-fill" style="transform: translate3d(0px, 0px, 0px) scaleX(0.0909091) scaleY(1); transition-duration: 300ms;"></span></div>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue2 = '2';
    var key2 = {
        html: 'html' + keyValue2,
        page: 'page' + keyValue2
    };
    var gdStorage2 = loadSession(key2.html);
    var page2 = loadSession(key2.page);
    $(document).ready(function() {
        if (gdStorage2) {
            $('.goods_content_2').html(gdStorage2);
            if (page2) {
                $('.main_wrap_2 .btn_goods_view_down_more').attr('data-page',page2);
            }
        }
        $('.main_wrap_2 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_2($(this).data('page'));
        });
    });

    function gd_get_list_2(page) {
        $.get('../goods/goods_main.php', {'mode' : 'get_main', 'more' : page, 'sno' : '2', 'groupSno' : ''}, function (data) {
            $(".goods_content_2").html(data);
            saveSession(key2.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_2 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key2.page, parseInt(page)+1);
                $('.main_wrap_2 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>
<!-- 메인 상품 노출 -->
				</div>
			</div>
		</div>
	</div>
	

    <div class="main_cont_slide_ban mt120">
        <div class="main_cont_slide">
            <style type="text/css">
     .slider-wrap .slick-slide {
        overflow:hidden;
    }

    .slider-banner-3040312042{
    width:100%;
    }
    .slider-banner-3040312042 img{
		max-width: 100%;
    }

	.body-main #wrap .slider-banner-3040312042 img{max-width:none;}

    .slider-banner-3040312042 .slick-prev{
       background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E");
       background:#ffffff\0/IE8;
    }
    .slider-banner-3040312042 .slick-next{
        background-image:   url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E");
        background:#ffffff\0/IE8;
    }

    .slider-banner-3040312042  .slick-dots li button{
        width:8px;
        height:8px;
        border-radius:100%;
        background:#2a2f3b;
    }
    .slider-banner-3040312042 .slick-dots li.slick-active button{
        background:#2a2f3b;
    }
</style>

<div class="slider-wrap slider-banner-3040312042 slick-initialized slick-slider">
    <div aria-live="polite" class="slick-list" style="padding: 0px 50px; height: 240px;"><div class="slick-track" style="opacity: 1; width: 5000px; transform: translate3d(-50px, 0px, 0px);" role="listbox"><div class="slick-slide slick-current slick-active slick-center" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide20">
     <a href="http://pobsmbsool.godomall.com/goods/event_sale.php?sno=18" tabindex="0"><img src="<%=cp %>/sool/main_files/13d9adfd3aaed89ec4febaa04e17c9fb_34930.png" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
    </div></div></div>

</div>
<script src="<%=cp %>/sool/main_files/slick.js.다운로드" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('.slider-banner-3040312042').not('.slick-initialized').slick({
            autoplay: true,
            dots: true,
            arrows: false,
            infinite: true,
            autoplaySpeed :3000,
            speed:1300,
            slidesToShow: 1,
            centerMode:true,
            variableWidth: true,
            adaptiveHeight: true,
            draggable : false
        });
    });
</script>

        </div>
        <!-- //main_cont_slide -->
    </div>
    <!-- //main_cont_slide_ban -->

	<div class="main_new mt120"> 
    	<div class="w1600">
			<div class="main_tit ">
				<h3 class="serif"><a href="https://www.homesool.com/main/index.php">신상품</a></h3>	   
				<p>새로나온 홈술 제품을 한눈에!</p>
			</div> 
			<div class="mt30">
			<!-- 메인 상품 노출 -->
<div class="goods_list main_wrap_3">
    <div class="goods_list_tit">
        <h3>신상품</h3>
    </div>
    <div class="goods_list_cont goods_content_3">
<div class="item_gallery_type">
    <ul>
        <li style="width:20%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000219&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000219_wlist_027.png" width="280" alt="하얀까마귀" title="하얀까마귀" class="middle">

						
						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->

                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000219&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                            <strong class="item_name">하얀까마귀</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">10,000원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
					<div class="goods_prd_icon"> 
						<!-- 튜닝 : 오늘/구독 상품 구분 2021-07-13 -->
<span class="prd_i_today">오늘</span>					</div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li style="width:20%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000218&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000218_wlist_017.png" width="280" alt="하얀까마귀" title="하얀까마귀" class="middle">

						<span class="icon_better"><img src="<%=cp %>/sool/main_files/icon_better.png" alt="골라담기"></span> 
						
						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->

                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000218&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                            <strong class="item_name">하얀까마귀</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">10,000원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
					<div class="goods_prd_icon"> 
						<!-- 튜닝 : 오늘/구독 상품 구분 2021-07-13 -->
<span class="prd_i_today">오늘</span>					</div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li style="width:20%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000217&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000217_wlist_068.png" width="280" alt="아이엠더문" title="아이엠더문" class="middle">

						
						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->

                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000217&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                            <strong class="item_name">아이엠더문</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">25,200원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
					<div class="goods_prd_icon"> 
						<!-- 튜닝 : 오늘/구독 상품 구분 2021-07-13 -->
<span class="prd_i_today">오늘</span>					</div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li style="width:20%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000216&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000216_wlist_010.png" width="280" alt="아이엠더문" title="아이엠더문" class="middle">

						<span class="icon_better"><img src="<%=cp %>/sool/main_files/icon_better.png" alt="골라담기"></span> 
						
						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->

                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000216&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                            <strong class="item_name">아이엠더문</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">25,200원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
					<div class="goods_prd_icon"> 
						<!-- 튜닝 : 오늘/구독 상품 구분 2021-07-13 -->
<span class="prd_i_today">오늘</span>					</div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li style="width:20%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000213&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                        <img src="<%=cp %>/sool/main_files/1000000213_wlist_08.png" width="280" alt="이도32" title="이도32" class="middle">

						
						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->

                    </a>
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000213&amp;mtn=3%5E%7C%5E%EC%8B%A0%EC%83%81%ED%92%88%5E%7C%5En">
                            <strong class="item_name">이도32</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">18,500원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                    </div>
                    <!-- //item_icon_box -->
					<div class="goods_prd_icon"> 
						<!-- 튜닝 : 오늘/구독 상품 구분 2021-07-13 -->
<span class="prd_i_today">오늘</span>					</div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
    </ul>
</div>
<!-- //item_gallery_type -->
    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue3 = '3';
    var key3 = {
        html: 'html' + keyValue3,
        page: 'page' + keyValue3
    };
    var gdStorage3 = loadSession(key3.html);
    var page3 = loadSession(key3.page);
    $(document).ready(function() {
        if (gdStorage3) {
            $('.goods_content_3').html(gdStorage3);
            if (page3) {
                $('.main_wrap_3 .btn_goods_view_down_more').attr('data-page',page3);
            }
        }
        $('.main_wrap_3 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_3($(this).data('page'));
        });
    });

    function gd_get_list_3(page) {
        $.get('../goods/goods_main.php', {'mode' : 'get_main', 'more' : page, 'sno' : '3', 'groupSno' : ''}, function (data) {
            $(".goods_content_3").html(data);
            saveSession(key3.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_3 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key3.page, parseInt(page)+1);
                $('.main_wrap_3 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>
<!-- 메인 상품 노출 -->  
			</div>
		</div>
	</div>
	
	 
	<!-- 라이브 홈술 -->
	<div class="main_live dn"> 
	<div class="w1600">
		<div class="main_tit ">
			<h3 class="serif">라이브 홈술</h3>	   
			<p>생생한 홈술 라이브 살펴보기</p>
		</div> 
		
		<div class="item_wrap mt25">
			
			<div class="swiper-container swiper-live-top swiper-container-fade swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">	
				<div class="swiper-wrapper" id="swiper-wrapper-26b9d232177a717b" aria-live="polite" style="transition-duration: 0ms;">  
					<div class="swiper-slide">
						<div class="video_wrap">
							<div class="video_bx">
								<div class="video_frame">
											<iframe width="640" height="360" src="<%=cp %>/sool/main_files/AZlfXRI3SVw.html" frameborder="0" allowfullscreen=""></iframe>
								</div>
							</div>
							<div class="video_txt">
								<div class="tit serif">TEST</div>	
							</div>
						</div>
					</div>	 		
					<div class="swiper-slide">
						<div class="video_wrap">
							<div class="video_bx">
								<div class="video_frame">
										<img src="<%=cp %>/sool/main_files/ico_noimg_300.gif" style="width:100%">
								</div>
							</div>
							<div class="video_txt">
								<div class="tit serif">TEST22222222222</div>	
							</div>
						</div>
					</div>	 		
				</div>
			<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div> 
			<div class="swiper-container swiper-live-thumb swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events swiper-container-free-mode swiper-container-thumbs">	
				<div class="swiper-wrapper" id="swiper-wrapper-cbe8726d216f893b" aria-live="polite" style="transition-duration: 0ms;">  
					<div class="swiper-slide">
						<div class="img_frame">
							<img src="<%=cp %>/sool/main_files/0.jpg" alt="">
						</div>
					</div>		
					<div class="swiper-slide">
						<div class="img_frame">
							<img src="<%=cp %>/sool/main_files/ico_noimg_300.gif">
						</div>
					</div>		
				</div>
			<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
		</div>
	</div>
</div>
	
	 
	<!-- 리뷰 -->
	<div class="main_review mt120">  
	<div class="main_tit ">
		<h3 class="serif">생생한 후기 공유</h3>	   
		<p>고객님들의 생생한 후기를 들려드립니다</p>
	</div>

	<div class="w1600">
		<div class="swiper-container swiper-mainreview mt30 swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">	
			<div class="swiper-wrapper" id="swiper-wrapper-892f4873d448acdb" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">   
				<div class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/86_main_066.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">알새우전 세일할 때 더 쟁여야겠어요!</div>
							<div class="post_con">알새우전 맥주랑 먹었어요ㅋㅋ 빙탄복 구매하면서 같이 샀는데 너무 맛있어요! 칠리소스에 먹으니 최고</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide swiper-slide-next" role="group" aria-label="2 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/94_main_044.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">선물받으시는분이 정말 좋아하십니다</div>
							<div class="post_con">도자기가 들어있어서 선물받으신 분이 정말 좋아하셨어요.가격이 비싸다고 생각했는데 도자기랑 잔이 있으니까 선물용으로는 충분히 가치가 있다..</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="3 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/80_main_083.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">빠른배송 감사 합니다 (냉무)</div>
							<div class="post_con">123&nbsp;</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="4 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/80_main_083.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">믿고 마시는 느린마을</div>
							<div class="post_con">너무 신선한 맛입니다. 언제나 굿</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="5 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/92_main_09.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">맛있어요!</div>
							<div class="post_con">제법 두툼하고 간도 적당해서 안주로도 밥반찬으로도 좋았어요!
밤에 술이랑 먹다 남은거 아침에 데워서 계란 후라이 반숙 올려 먹으니 또..</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="6 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/86_main_066.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">완전 맛있어요!</div>
							<div class="post_con">새우가 제법 오동통해서 씹는 맛이 있고 계란빵이나 오믈렛 같은 폭신한 느낌이에요
그간 먹던 새우전보단 조금 더 서양스타일?
넘 맛있..</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="7 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/92_main_09.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">고기완자전 진짜 맛있네요!</div>
							<div class="post_con">술 안주로 먹으려고 샀다가 밥 반찬으로 먹었어요. 
동그랑땡 같기도 하고 함박스테이크 같기도 하고! 
스테이크 소스 얹으니 아이들도..</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="8 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/88_main_022.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">너무 너무 맛있어요 진짜!!</div>
							<div class="post_con">느린마을 전은 여러가지로 해먹을 수 있지만
꼭 후라이팬에 기름 둘러서 구워 드세요!
진짜 갓 해먹은 전처럼 맛있어요❣️❣️</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="9 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/86_main_066.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">굳굳</div>
							<div class="post_con">새우 큼직하고 통통하니
진짜 맛있어요~~~</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="10 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/86_main_066.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">알새우전 맛있어용</div>
							<div class="post_con">세일하길래 얼른 구매했어요
계란도 몽글몽글 많이 들어가있구 새우도 큰편이고 맛있게 잘먹었어욤
맥주 안주로도 먹고 반찬으로도 먹어봤어..</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="11 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/11_main_061(1).jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">포장 꼼꼼히 잘해서 보내주시네요</div>
							<div class="post_con">사서 들고오기 힘들었는데 집에서 시켜먹을수 있어서 너무 좋습니다.</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="12 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/11_main_061(1).jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">느린마을 생막걸리</div>
							<div class="post_con">역시 좋은막걸리 이면서 모든게 만족합니다 
막걸리는 느린마을~~</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="13 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/80_main_083.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">빠르고 간편해요</div>
							<div class="post_con">당일배송으로 하루만에 받아볼 수 있어서 좋아요
홈페이지가 리뉴얼되면서 배송비가 붙네요 ㅠㅠ
배송비 무료로 해주시면 좋을 것 같아요</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="14 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/78_main_077.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">딱 제가 좋아하는 조합</div>
							<div class="post_con">제가 좋아하늣것만 구성된 제품이라 친구한테 선물했어요. 너무 좋아하네요.</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="15 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/85_main_046.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">빠른 배송에 감사 드리며 , 맛있게 잘 먹었습니다.</div>
							<div class="post_con">빠른 배송에 감사 드리며 , 맛있게 잘 먹었습니다.&nbsp;</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="16 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/68_main_067.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">첫 구매!!</div>
							<div class="post_con">배송도 번쩍!!포장도 번쩍!!맛있게 먹으려고 냉장고에 넣어두고 아직 시음전인데느낌 좋습니다!!여러분들 어서 구입버튼 클릭 하세요!!</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="17 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/68_main_067.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">느린마을 증류주 대박</div>
							<div class="post_con">깔끔하고 너무 맛있어서 재구매 했습니다.뒷끝도 없고 좋습니다.</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="18 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/67_main_085.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">좋아요</div>
							<div class="post_con">신선하게 빠른배송 넘 좋으네요.</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="19 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/67_main_085.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">선물했는데 잘 받았다고 하네요.</div>
							<div class="post_con">막걸리 중독자(?)가 있어서 저번에 마셔보고 취향에 맞아서 선물 했는데잘 받았다고 합니다.당일배송이 참 맘에 듭니다.</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="20 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/119_main_061.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">맛있어요</div>
							<div class="post_con">코코넛민트 상상이상.&nbsp;포도블루베리 굿 테이스트</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="21 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/67_main_085.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">아버지가 좋아하십니다.</div>
							<div class="post_con">배달시스템이 만족스러우며 포장도 꼼꼼합니다.맛도좋아서 앞으로 계속 주문할 예정입니다.</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				<div class="swiper-slide" role="group" aria-label="22 / 22" style="width: 265px; margin-right: 20px;">
					<div class="review_cont">
						<div class="review_img">
							<img src="<%=cp %>/sool/main_files/78_main_077.jpg" alt="">
						</div> 				   
						<div class="review_content">
							<div class="tit">선물했는데 너무 맛있다고 극찬하네요 ㅎ</div>
							<div class="post_con">선물용으로 아주 딱인거 같아요센스있는 선물이라고 좋아하네요&nbsp;다음에 또 주문할게요!</div> 
							<div class="rating_box">
								<span class="rating"><span style="width:100%;">별</span></span>
							</div>
						</div>
					</div>
				</div> 
				 
			</div>  
		<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div> 
		<div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-892f4873d448acdb" aria-disabled="false"></div>
		<div class="swiper-button-prev swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-892f4873d448acdb" aria-disabled="true"></div> 
	</div>
</div>
 
	 
	<div class="main_cont_slide_ban mt120">
        <div class="main_cont_slide">
            <style type="text/css">
     .slider-wrap .slick-slide {
        overflow:hidden;
    }

    .slider-banner-3455075868{
    width:100%;
    }
    .slider-banner-3455075868 img{
		max-width: 100%;
    }

	.body-main #wrap .slider-banner-3455075868 img{max-width:none;}

    .slider-banner-3455075868 .slick-prev{
       background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E");
       background:#ffffff\0/IE8;
    }
    .slider-banner-3455075868 .slick-next{
        background-image:   url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E");
        background:#ffffff\0/IE8;
    }

    .slider-banner-3455075868  .slick-dots li button{
        width:8px;
        height:8px;
        border-radius:100%;
        background:#2a2f3b;
    }
    .slider-banner-3455075868 .slick-dots li.slick-active button{
        background:#2a2f3b;
    }
</style>

<div class="slider-wrap slider-banner-3455075868 slick-initialized slick-slider slick-dotted" role="toolbar">
    <div aria-live="polite" class="slick-list" style="padding: 0px 50px; height: 240px;"><div class="slick-track" style="opacity: 1; width: 10000px; transform: translate3d(-2450px, 0px, 0px);" role="listbox"><div class="slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" tabindex="-1">
     <a href="http://pobsmbsool.godomall.com/service/membership_lounge.php" tabindex="-1"><img src="<%=cp %>/sool/main_files/909fab6491d80a4004ed2b790dff6db0_51876.jpeg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
    </div><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1">
     <a href="http://pobsmbsool.godomall.com/service/delivery_type.php" tabindex="-1"><img src="<%=cp %>/sool/main_files/eb0734e46ef77327cde9e55376bc3a01_10148.jpg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
    </div><div class="slick-slide slick-current slick-active slick-center" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide30">
     <a href="http://pobsmbsool.godomall.com/service/membership_lounge.php" tabindex="0"><img src="<%=cp %>/sool/main_files/909fab6491d80a4004ed2b790dff6db0_51876.jpeg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
    </div><div class="slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide31">
     <a href="http://pobsmbsool.godomall.com/service/delivery_type.php" tabindex="-1"><img src="<%=cp %>/sool/main_files/eb0734e46ef77327cde9e55376bc3a01_10148.jpg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
    </div><div class="slick-slide slick-cloned slick-center" data-slick-index="2" aria-hidden="true" tabindex="-1">
     <a href="http://pobsmbsool.godomall.com/service/membership_lounge.php" tabindex="-1"><img src="<%=cp %>/sool/main_files/909fab6491d80a4004ed2b790dff6db0_51876.jpeg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
    </div><div class="slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" tabindex="-1">
     <a href="http://pobsmbsool.godomall.com/service/delivery_type.php" tabindex="-1"><img src="<%=cp %>/sool/main_files/eb0734e46ef77327cde9e55376bc3a01_10148.jpg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
    </div></div></div>
    

<ul class="slick-dots" style="display: block;" role="tablist"><li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation30" id="slick-slide30"><button type="button" data-role="none" role="button" tabindex="0">1</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation31" id="slick-slide31" class=""><button type="button" data-role="none" role="button" tabindex="0">2</button></li></ul></div>
<script src="<%=cp %>/sool/main_files/slick.js.다운로드" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('.slider-banner-3455075868').not('.slick-initialized').slick({
            autoplay: true,
            dots: true,
            arrows: false,
            infinite: true,
            autoplaySpeed :3000,
            speed:1300,
            slidesToShow: 1,
            centerMode:true,
            variableWidth: true,
            adaptiveHeight: true,
            draggable : false
        });
    });
</script>

        </div>
        <!-- //main_cont_slide -->
    </div>
    <!-- //main_cont_slide_ban -->
	

</div>
<!-- //main_content -->

<script src="<%=cp %>/sool/main_files/swiper-bundle.min.js.다운로드"></script>
<script>
    //	홈술 컬렉션
	var swiper = new Swiper(".main_collection .swiper-container", {
        slidesPerView: "auto",
        spaceBetween: 25,
        loop: true,
		pagination: {
			el: ".swiper-pagination",
			type: "progressbar",
        }, 
        navigation: {
			nextEl: ".main_collection .swiper-button-next",
			prevEl: ".main_collection .swiper-button-prev",
        },
    }); 
	//	반짝 홈술
    var swiper = new Swiper(".main_timesale .swiper-container", {
        slidesPerView: "1",
        spaceBetween: 20,
		loop: true,
		breakpoints: {
			 
			// when window width is >= 1600px
			1600: {
			  slidesPerView: 2 ,
			}
		},
        navigation: {
			nextEl: ".main_timesale .next",
			prevEl: ".main_timesale .prev",
        },
    }); 

	/*
	//추천홈술 
    var swiper = new Swiper(".main_recommend .swiper-container", { 
        slidesPerView: "auto",
		centeredSlides: true,
        spaceBetween: 20,
		loop: true, 
        navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
        } 
    }); 
	*/  
	
	//	구독 홈술
	var swiper = new Swiper(".main_subscribe .swiper-container", {
        slidesPerView: "auto",
        spaceBetween: 25,
        loop: true,
		pagination: {
			el: ".swiper-pagination",
			type: "progressbar",
        }, 
        navigation: {
			nextEl: ".main_subscribe .swiper-button-next",
			prevEl: ".main_subscribe .swiper-button-prev",
        },
    }); 
	
      
	
	//	라이브 홈술
	var swiperthumb = new Swiper(".swiper-live-thumb", {
        spaceBetween: 20,
        slidesPerView: 3,
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
    });

    var swiper2 = new Swiper(".swiper-live-top", {
        //spaceBetween: 20,
        effect: 'fade',
        thumbs: {
          swiper: swiperthumb,
        },

    });
	//	후기
    var swiper = new Swiper(".main_review  .swiper-container", {
        slidesPerView: "4",
        spaceBetween: 20,
		breakpoints: {
			 
			// when window width is >= 1600px
			1600: {
			  slidesPerView: 6,
			  spaceBetween: 40
			}
		},
        //loop: true,     
        navigation: {
			nextEl: ".main_review .swiper-button-next",
			prevEl: ".main_review .swiper-button-prev",
        },
    });    
</script>

 
<script src="<%=cp %>/sool/main_files/slick.js.다운로드" type="text/javascript" charset="utf-8"></script>
<script> 
	//	추천 홈술
	$('.main_recommend_list').slick({
		dots: true,
		infinite: true,
		speed: 300,
		slidesToShow: 1,
		centerMode: true,
		variableWidth: true	,
		//cssEase: 'linear'
	}); 
 
 
</script>       


 

            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->

    <div id="footer_wrap">
<div class="ft_notice">
	<div class="ft_notice_inner">
		<div class="tit">NOTICE</div>
		<ul>
			<li><a href="https://www.homesool.com/board/view.php?bdId=notice&amp;sno=13">CJ대한통운 배송 출고 제한 안내</a></li>
		</ul>
		<a href="https://www.homesool.com/board/list.php?bdId=notice" class="more">더보기</a>
	</div>
</div>

<div id="footer">
    <div class="foot_list">
        <ul> 
            <li><a href="https://www.homesool.com/service/agreement.php">이용약관</a></li>
            <li><a href="https://www.homesool.com/service/private.php">개인정보처리방침</a></li>
            <li><a href="https://www.homesool.com/service/guide.php">이용안내</a></li>
        </ul>
		<select class="chosen-select" style="width: 180px; display: none;" onchange="if(this.value) window.open(this.value);">
			<option value="#;">Family Site</option>  
			<option value="https://www.soolsool.co.kr/" target="_blank">배상면주가</option>	 
			<option value="https://store.naver.com/attractions/detail?entry=plt&amp;id=12400953&amp;query=%EC%A0%84%ED%86%B5%EC%88%A0%EB%B0%95%EB%AC%BC%EA%B4%80%EC%82%B0%EC%82%AC%EC%9B%90 
">느린마을산사원박물관 </option>
		</select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 180px;" title=""><a class="chosen-single"><span>Family Site</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
    </div>
    <!-- //foot_list -->
    <div class="foot_cont"> 
        <div class="foot_info">
			<div class="tit serif">농업회사법인 배상면주가 포천엘비 주식회사</div>
            <address>
                <strong></strong>
                <span></span>
            </address>
            <div class="foot_info_list">
				<div>
					<span>상호 :농업회사법인 배상면주가 포천엘비 주식회사 지점 </span>
					<span>대표 : 배영호</span>
					<span>전화 : 080-550-5500</span>
					<!-- <span>팩스 : </span> -->
				</div> 
				<div>
					<span>사업자등록번호 :  882-85-01179 </span>
					<span>통신판매업신고번호 : 제 2020-경기포천-0287 호 <a href="https://www.homesool.com/main/index.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;8828501179&#39;); return false;">[사업자정보확인] </a></span> 
				</div> 
				<div>
					<span> 주소 :  11123 경기도 포천시 화현면 화동로432번길 25 배상면주가 3층</span> 
				</div> 
				<div> 
					<span>개인정보관리책임자 : 장인섭</span>
					<span>이메일 : <a href="mailto:homesool@soolsool.co.kr" class="btn_email">homesool@soolsool.co.kr</a></span>
				</div>	
            </div> 
			
            <div class="foot_info_list">
				<div>
					<span>상호 :농업회사법인 배상면주가 포천엘비 주식회사 서울지점  </span>
					<span>대표 : 배영호</span> 
					<span>전화 : 080-550-5500</span>	   
					<!-- <span>팩스 : </span> -->
				</div>	 
				<div>
					<span>사업자등록번호 :  776-85-01398 </span>
					<span>통신판매업신고번호 : 제 2020-서울서초-2839 호 <a href="https://www.homesool.com/main/index.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;7768501398&#39;); return false;">[사업자번호조회]</a></span>
				</div>
				<div>
					<span> 주소 :  06752 서울특별시 서초구 강남대로27길 7-9, 1층</span>
				</div> 
				<div>
					<span>개인정보관리책임자 : 장인섭</span>		
					<span>이메일 : <a href="mailto:homesool@soolsool.co.kr" class="btn_email">homesool@soolsool.co.kr</a></span>
				</div> 
            </div> 
            <!-- // -->
            <p class="copyright playfair">copyright. 2021.  www.homesool.com. All rights reserved.</p>
        </div>
        <!-- //foot_info -->
		<div class="foot_cs">  
			<div class="tit serif">Customer Center</div>
			<div class="num  ">080.550.5500</div>
			<div class="txt">근무시간<br>월~금 09:00~17:00 토요일 10:00~15:00<br>일요일/법정공휴일은 휴무</div>	  
			<div>
				<a href="https://www.homesool.com/service/qa.php">1:1문의</a>		   
				<a href="https://www.homesool.com/service/faq.php" class="playfair">FAQ</a>
			</div>
			
		</div>
    </div>
    <!-- //foot_cont -->
    <div class="foot_certify">
        <span><img src="<%=cp %>/sool/main_files/logo_comodo.png" alt="보안서버 적용 확인"></span>
        <span><img src="<%=cp %>/sool/main_files/escrow_banner_kcp.png" alt="에스크로 서비스 확인" title="에스크로 서비스 확인" class="hand" onclick="javascript:window.open(&#39;https://admin.kcp.co.kr/Modules/escrow/kcp_pop.jsp?site_cd=GKPI1&#39;, &#39;escrowBanner&#39;, &#39;scrollbars=no, resizable=no, width=500, height=450&#39;);"></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>
<!-- //footer -->
    </div>
    <!-- //footer_wrap -->

	
    <div class="scroll_wrap">

        <!-- 우측 스크롤 배너 -->
        <div id="scroll_right">
<div class="right_banner" style="display:none;">
<a href="https://www.homesool.com/goods/brand.php"><img src="<%=cp %>/sool/main_files/scroll-banner-right01.jpg" alt="스크롤 우측 배너" title="스크롤 우측 배너"></a></div>
<div class="scroll_right_cont" style="display: none;">
    <h4>TODAY VIEW</h4>

    <div class="scr_paging" style="display: none;">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="<%=cp %>/sool/main_files/btn_scroll_prev.png" alt="최근본 이전 상품"></button>
        <span><strong class="js_current">0</strong>/<span class="js_total" style="float:none;width:auto;">0</span></span>
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="<%=cp %>/sool/main_files/btn_scroll_next.png" alt="최근본 다음 상품"></button>
    </div>
    <!-- //scr_paging -->
</div>


<script type="text/javascript">
    // DOM 로드
    $(function () {
        $('.scroll_right_cont').todayGoods();
    });

    // 최근본상품 리스트 페이징 처리 플러그인
    $.fn.todayGoods = function () {
        // 기본값 세팅
        var self = $(this);
        var setting = {
            page: 1,
            total: 0,
            rowno: 5
        };
        var element = {
            goodsList: self.find('ul > li'),
            closeButton: self.find('ul > li > button'),
            prev: self.find('.scr_paging > .bnt_scroll_prev'),
            next: self.find('.scr_paging > .bnt_scroll_next'),
            paging: self.find('.scr_paging')
        };

        // 페이지 갯수 설정
        setting.total = Math.ceil(element.goodsList.length / setting.rowno);

        // 화면 초기화 및 갱신 (페이지 및 갯수 표기)
        var init = function () {
            if (setting.total == 0) {
                setting.page = 0;
                element.paging.hide();
            }
            self.find('ul').hide().eq(setting.page - 1).show();
            self.find('.scr_paging .js_current').text(setting.page);
            self.find('.scr_paging .js_total').text(setting.total);
        }

        // 삭제버튼 클릭
        element.closeButton.click(function(e){
            $.post('../goods/goods_ps.php', {
                'mode': 'delete_today_goods',
                'goodsNo': $(this).data('goods-no')
            }, function (data, status) {
                // 값이 없는 경우 성공
                if (status == 'success' && data == '') {
                    location.reload(true);
                }
                else {
                    console.log('request fail. ajax status (' + status + ')');
                }
            });
        });

        // 이전버튼 클릭
        element.prev.click(function (e) {
            setting.page = 1 == setting.page ? setting.total : setting.page - 1;
            init();
        });

        // 다음버튼 클릭
        element.next.click(function (e) {
            setting.page = setting.total == setting.page ? 1 : setting.page + 1;
            init();
        });

        // 화면 초기화
        init();
    };
</script>
        </div>
        <!-- //scroll_right -->
        <!-- //우측 스크롤 배너 -->


    </div>
    <!-- //scroll_wrap --> 
	


    <!-- 퀵 검색 폼 -->
    <!-- 퀵 검색 폼 -->


<!-- //wrap -->

<!-- 쇼핑 카트 탭 -->

<!-- //쇼핑 카트 탭 -->

<!-- 회원가입 유도 푸시 -->

<!-- //회원가입 유도 푸시 -->

<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src="<%=cp %>/sool/main_files/blank.html" style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- 외부 스크립트 -->


<%-- 
<div id="popupCode_layer_25" class="main_popup_layer" style="position: absolute; overflow: hidden; z-index: 2000; width: 744px; height: 673px; top: 0px; left: 0px; padding-bottom: 10px; display: none;"><style type="text/css">
	.main_popup_layer{top:0 !important; left:50% !important; -webkit-transform:translateX(-50%);transform:translateX(-50%);}
    #popupCode_layer_25_form {background: ;}
    #popupCode_layer_25_form .box .view {width:708px; height:556px; overflow: hidden;}
	#popupCode_layer_25_form .check {background-color:; color:; text-align:right;}
	#popupCode_layer_25_form .check .form_element .check_s {background-color:;}
</style>

<div id="popupCode_layer_25_form" class="sys_pop">
	<div class="box">
		<div class="view">
			<p style="text-align: center; " align="center"><img src="<%=cp %>/sool/main_files/e827251610393bc4c06365a4b708bd87_094402.png" title="e827251610393bc4c06365a4b708bd87_094402.png" class="js-smart-img"><br style="clear:both;">&nbsp;</p>
		</div>
		<!-- 오늘 하루 보이지 않음 : start -->
		<div class="check">
            <span class="form_element">
                <label for="todayUnSee_popupCode_layer_25" class="check_s on">오늘 하루 보이지 않음</label>
                <input type="checkbox" id="todayUnSee_popupCode_layer_25" class="checkbox" onclick="gd_popup_cookie(&#39;popupCode_layer_25&#39;, this);">
            </span>
		</div>
		<!-- 오늘 하루 보이지 않음 : end -->
		<button type="button" class="close" title="닫기" onclick="$(&#39;#popupCode_layer_25&#39;).hide();">닫기</button>
	</div>
</div> --%>

<script type="text/javascript">
    <!--
    $(function(){
    });
    //-->
</script>
</div>
</body>
</html>





