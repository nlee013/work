<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0059)https://www.homesool.com/goods/goods_list.php?cateCd=001006 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>홈술 고르기</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="csrf-token" content="MTY0NjAyODU0MjQxMzk0NjYyNjgyNTQ1MTg0MTQ1MjU3NjA3NDc3Njg1">


    <meta property="og:type" content="website">
    <meta property="og:title" content="홈술닷컴">
    <meta property="og:url" content="https://www.homesool.com/goods/goods_list.php?cateCd=001006">
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
    <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/underscore-min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.validate.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/additional-methods.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/numeral.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/accounting.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/money.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/chosen.jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/placeholders.jquery.min.js.다운로드"></script>
    <!--[if gt IE 8]-->
    <script type="text/javascript" src="<%=cp %>/sool//main_files/clipboard.min.js.다운로드"></script>
    <!--[endif]-->
    <script type="text/javascript" src="<%=cp %>/sool//main_files/jquery.vticker.js.다운로드"></script>
    <script type="text/javascript" src=".<%=cp %>/sool/main_files/gd_ui.js.다운로드"></script>

    <script type="text/javascript">
        // 고도몰5 통화정책
        var gdCurrencyDecimal = 0;
        var gdCurrencyDecimalFormat = '0';
        var gdCurrencyCode = 'KRW';
        var gdCurrencyAddDecimal = 0;
        var gdCurrencyAddDecimalFormat = '';
        var gdCurrencyAddCode = '';
        var gdLocale = 'ko';
        var gdCurrencySymbol = '';
        var gdCurrencyString = '원';

        // 환율변환 정책
        fx.base = "KRW";
        fx.settings = {
            from : "KRW",
            to : gdCurrencyCode
        };
        fx.rates = {
            "KRW" : 1,
            "USD" : 0,
            "CNY" : 0,
            "JPY" : 0,
            "EUR" : 0,
        }
    </script>

    <script type="text/javascript" src="<%=cp%>/sool/product_files/gd_common.js.다운로드"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="<%=cp%>/sool/product_files/jquery.cookie.js.다운로드"></script>
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

<body class="body-goods body-goods-list pc">
<div class="top_area"></div>
<div id="wrap">

    <div id="header_warp">
<div id="header">

    <div class="header_top">
        <div class="header_top_cont">
			
			<div class="h1_logo"><!--——--><a href="https://www.homesool.com/main/index.php"><img src="<%=cp %>/sool/main_files/701de34a823ef71ad6950510de136ece_23946.png" alt="상단 로고" title="상단 로고"></a><!--——--></div>
			
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
				<li><a href="">홈술고르기</a></li>
				<li><a href="">Best홈술</a></li>
				<li><a href="">홈술가이드</a></li>
				<li><a href="">고객센터 </a></li>				 
				<!-- <li><a href="#">라이브 홈술</a></li> -->
			</ul>
			 
           <div class="hd_right">
				<ul class="top_member_box">
				
				<!-- 로그인 회원가입 고객센터 링크 연결 ^^ --> 
            	        <li><a href="<%=cp%>/sool/login.jsp">Login</a></li>
            	    <li><a href="<%=cp%>/sool/join.jsp">Join</a>
            	        <!--<span class="accent">
            	            <span><strong>2,000 P</strong></span>
            	        </span>-->
            	    </li>
            	    
            	    <li><a href="<%=cp%>/sool/csCenter.jsp">CS Center</a></li>
            	</ul>
				<!-- 검색 폼 -->
				<div class="top_search_btn">
                    <span>&nbsp;</span>
                    <img src="<%=cp %>/sool/main_files/btn_top_search.png" alt="">
                </div>
                <!-- //top_text_cont -->
                

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
                    	    <!-- <button type="button" class="btn_top_search_close"><strong>닫기</strong></button> -->
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
<!-- 마이페이지 장바구니 부분 -->
				<!-- 검색 폼 -->
            	<ul class="icon_util">	   
            		<li>
            	        <a href="" class="icon_mypage">
            	        	<img src="<%=cp%>/sool/main_files/btn_top_mypage.png">
            	        </a>
            	    </li>
            	    <li>
            	    <a href="" class="icon_cart">
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
<!-- //header -->


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
<div class="content">
    <div class="location_wrap">
        <div class="location_cont">
            <em>
				<a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006#" class="local_home">HOME</a> 
  
				&gt; 홈술카테고리
				&gt; 약주/청주
  
			
			</em>
			  
        </div>
    </div>
    <!-- //location_wrap -->

    <div class="goods_list_item">

        <div class="goods_list_item_tit">
            <h2 class="tit_38 center">홈술카테고리</h2>
        </div>
        
        <div class="list_item_category mt40">
            <ul>
				<li class=""><a href="https://www.homesool.com/goods/hs_today.php">오늘홈술</a></li>
                <li class=""><a href="https://www.homesool.com/goods/hs_subscribe.php">구독홈술</a></li>	
                <li class="">
                    <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001004"><span>막걸리 <em>(36)</em></span></a>
                </li>
                <li class="">
                    <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001010"><span>증류주/소주/리큐르 <em>(39)</em></span></a>
                </li>
                <li class="on">
                    <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006"><span>약주/청주 <em>(15)</em></span></a>
                </li>
                <li class="">
                    <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001007"><span>와인/과실주 <em>(29)</em></span></a>
                </li>
                <li class="">
                    <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001008"><span>홈닷푸드 <em>(29)</em></span></a>
                </li>
                <li class="">
                    <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001009"><span>홈닷굿즈 <em>(8)</em></span></a>
                </li>
            </ul>
        </div>

   
    ${imagePath}
    
    
<table width="600" border="0" cellspacing="1" cellpadding="3" bgColor="#FFFFFF" align="center">

<c:set var="n" value="0"/>
<c:forEach var="dto" items="${lists}">
	
	<c:if test="${n==0}">
		<tr bgcolor="#FFFFFF" ></tr>
	</c:if>
	<c:if test="${n!=0&&n%3==0 }">
		<tr bgcolor="#FFFFFF" >
	</c:if>
	
	<td width="200" align="center">
    	<a href="${imagePath}/${dto.prod_sImg}">
	    	<img src="${imagePath}/${dto.prod_sImg}" width="200" height="330" 
	    	style="border: 1px; border-radius: 2em;"/>
	    </a>
	    <br/><br/>${dto.prod_name}&nbsp;<br/>
	    <a href="<%=cp%>/homesool/delete.com?prod_no=${dto.prod_no}">삭제</a>
	    ${dto.prod_price }원
	</td>
	
	<c:set var="n" value="${n+1}"/>
</c:forEach>
	
<c:if test="${n>0||n%4!=0 }">
	<c:forEach var="i" begin="${n%4+1}" end="3" step="1">
			<td>&nbsp;</td>
	</c:forEach>
</c:if>

<c:if test="${n!=0 }">
	</tr>
</c:if>
	
<c:if test="${dataCount != 0}">
	<tr bgcolor="#FFFFFF">
	   <td align="center" height="30" colspan="3">${pageIndexList}</td>
    </tr>
</c:if>
	
<c:if test="${dataCount == 0}">
	<tr bgcolor="#FFFFFF">
       <td align="center" colspan="3" height="30">등록된 자료가 없습니다.</td>
    </tr>
</c:if>
	
</table>

        <!-- 설문조사 배너 --><!-- 설문조사 배너 -->


<script>
	$('.filter').click(function(){
		$('.layer_filter').toggleClass('dn');	
	});	  
	$('.layer_filter .layer_close').click(function(){
		$('.layer_filter').addClass('dn');	
	});

	$(document).ready(function(){
		
		$('#btnFilterSelectSearch').on('click', function(){
			$('form[name=frmList]').get(0).submit();
		});

	});
</script>

            </form>
        </div>
        <!-- //goods_pick_list -->

        <div class="goods_list mt50">
            <div class="goods_list_cont">
                <!-- 상품 리스트 -->
<div class="item_basket_type">
    <ul>
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000161">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000161_wlist_03.jpg" width="280" alt="배상면주가 명품약주세트" title="배상면주가 명품약주세트" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000161" data-goods-nm="배상면주가 명품약주세트" data-goods-price="40000.00" data-goods-image-src="/data/goods/21/08/35/1000000161/1000000161_wlist_03.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000161"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000161">
                            <strong class="item_name">배상면주가 명품약주세트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">40,000원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">40,000원 </del>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000157">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000157_wlist_025.jpg" width="280" alt="느린마을약주" title="느린마을약주" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000157" data-goods-nm="느린마을약주" data-goods-price="22410.00" data-goods-image-src="/data/goods/21/08/35/1000000157/1000000157_wlist_025.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000157"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000157">
                            <strong class="item_name">느린마을약주</strong>
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
                        <del style="color:#888; text-decoration:line-through;">24,900원 </del>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000130">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000130_wlist_038.jpg" width="280" alt="감사" title="감사" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000130" data-goods-nm="감사" data-goods-price="17000.00" data-goods-image-src="/data/goods/21/08/34/1000000130/1000000130_wlist_038.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000130"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000130">
                            <strong class="item_name">감사</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">17,000원 </span>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000113">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000113_wlist_054.jpg" width="280" alt="산사춘" title="산사춘" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000113" data-goods-nm="산사춘" data-goods-price="3700.00" data-goods-image-src="/data/goods/21/08/34/1000000113/1000000113_wlist_054.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000113"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="<%=cp %>/sool/product_files/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000113">
                            <strong class="item_name">산사춘</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">3,700원 </span>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000107">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000107_wlist_098.jpg" width="280" alt="심술12" title="심술12" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000107" data-goods-nm="심술12" data-goods-price="2700.00" data-goods-image-src="/data/goods/21/08/34/1000000107/1000000107_wlist_098.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000107"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="<%=cp %>/sool/product_files/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000107">
                            <strong class="item_name">심술12</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 
                        <strong class="item_price">
                            <span style="">2,700원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">3,000원 </del>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000106">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000106_wlist_02.jpg" width="280" alt="심술8" title="심술8" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000106" data-goods-nm="심술8" data-goods-price="2700.00" data-goods-image-src="/data/goods/21/08/34/1000000106/1000000106_wlist_02.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000106"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="<%=cp %>/sool/product_files/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000106">
                            <strong class="item_name">심술8</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 
                        <strong class="item_price">
                            <span style="">2,700원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">3,000원 </del>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000105">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000105_wlist_042.jpg" width="280" alt="심술7" title="심술7" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000105" data-goods-nm="심술7" data-goods-price="2700.00" data-goods-image-src="/data/goods/21/08/34/1000000105/1000000105_wlist_042.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000105"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="<%=cp %>/sool/product_files/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000105">
                            <strong class="item_name">심술7</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 
                        <strong class="item_price">
                            <span style="">2,700원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">3,000원 </del>
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
        <li class="item_soldout" style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000082">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000082_wlist_040.jpg" width="280" alt="감사" title="감사" class="middle"></div>
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>

 
						
						<span class="icon_better"><img src="<%=cp %>/sool/product_files/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000082">
                            <strong class="item_name">감사</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">17,000원 </span>
                        </strong>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/product_files/icon_soldout.gif" alt="품절">
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000078">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000078_wlist_091.jpg" width="280" alt="삼양춘 약주" title="삼양춘 약주" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000078" data-goods-nm="삼양춘 약주" data-goods-price="20000.00" data-goods-image-src="/data/goods/21/08/34/1000000078/1000000078_wlist_091.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000078"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="<%=cp %>/sool/product_files/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000078">
                            <strong class="item_name">삼양춘 약주</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">20,000원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">20,000원 </del>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000077">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000077_wlist_064.jpg" width="280" alt="삼양춘 청주" title="삼양춘 청주" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000077" data-goods-nm="삼양춘 청주" data-goods-price="17500.00" data-goods-image-src="/data/goods/21/08/34/1000000077/1000000077_wlist_064.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000077"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="<%=cp %>/sool/product_files/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000077">
                            <strong class="item_name">삼양춘 청주</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">17,500원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">17,500원 </del>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000059">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000059_wlist_033.jpg" width="280" alt="녹고의눈물 500" title="녹고의눈물 500" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000059" data-goods-nm="녹고의눈물 500" data-goods-price="19500.00" data-goods-image-src="/data/goods/21/08/34/1000000059/1000000059_wlist_033.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000059"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="<%=cp %>/sool/product_files/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000059">
                            <strong class="item_name">녹고의눈물 500</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">19,500원 </span>
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
        <li class="item_soldout" style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000053">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/1000000053_wlist_035.jpg" width="280" alt="서설" title="서설" class="middle"></div>
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>

 
						
						<span class="icon_better"><img src="<%=cp %>/sool/product_files/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000053">
                            <strong class="item_name">서설</strong>
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
                        <del style="color:#888; text-decoration:line-through;">15,000원 </del>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="<%=cp %>/sool/product_files/icon_soldout.gif" alt="품절">
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=115">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/115_wlist_025.jpg" width="280" alt="산사춘 3입" title="산사춘 3입" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="115" data-goods-nm="산사춘 3입" data-goods-price="11000.00" data-goods-image-src="/data/goods/21/05/18/115/115_wlist_025.jpg" data-optionfl="n" data-min-order-cnt="0" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="115"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=115">
                            <strong class="item_name">산사춘 3입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">11,000원 </span>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=107">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/107_wlist_010.jpg" width="280" alt="산사춘 5입" title="산사춘 5입" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="107" data-goods-nm="산사춘 5입" data-goods-price="17900.00" data-goods-image-src="/data/goods/21/04/20/107/107_wlist_010.jpg" data-optionfl="n" data-min-order-cnt="0" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="107"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=107">
                            <strong class="item_name">산사춘 5입</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">17,900원 </span>
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
        <li style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box">
                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=94">
                        <div class="goods_img"><img src="<%=cp %>/sool/product_files/94_wlist_073.jpg" width="280" alt="느린마을빙주기세트" title="느린마을빙주기세트" class="middle"></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="94" data-goods-nm="느린마을빙주기세트" data-goods-price="50000.00" data-goods-image-src="/data/goods/21/01/15/94/94_wlist_073.jpg" data-optionfl="n" data-min-order-cnt="0" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="<%=cp %>/sool/product_files/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="94"><img src="<%=cp %>/sool/product_files/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=94">
                            <strong class="item_name">느린마을빙주기세트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span style="">50,000원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">50,000원 </del>
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
<!-- //item_basket_type -->

<!-- option layer -->
<div id="optionViewLayer" class="layer_wrap dn"></div>
<!-- //option layer -->
<div id="addCartLayer" class="layer_wrap dn">
    <div class="box add_cart_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
        <div class="view">
            <h2>장바구니 담기</h2>
            <div class="scroll_box">
                <p class="success"><strong>상품이 장바구니에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
            </div>
            <div class="btn_box">
                <button class="btn_cancel"><span>취소</span></button>
                <button class="btn_confirm btn_move_cart"><span>확인</span></button>
            </div>
            <!-- //btn_box -->
            <button title="닫기" class="close" type="button">닫기</button>
        </div>
    </div>
</div>
<div id="addWishLayer" class="layer_wrap dn">
    <div class="box add_wish_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
        <div class="view">
            <h2>찜 리스트 담기</h2>
            <div class="scroll_box">
                <p class="success"><strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
            </div>
            <div class="btn_box">
                <button class="btn_cancel"><span>취소</span></button>
                <button class="btn_confirm btn_move_wish"><span>확인</span></button>
            </div>
            <!-- //btn_box -->
            <button title="닫기" class="close layer_close" type="button">닫기</button>
        </div>
    </div>
</div>
<!-- //layer_wrap -->
<!-- wish template -->
<form id="frmWishTemplateView" method="post">
    <input type="hidden" name="mode" value="wishIn">
    <input type="hidden" name="cartMode" value="">
    <input type="hidden" name="optionFl" value="">
</form>
<!-- //cart template -->
<script type="text/javascript">
    <!--
    $(document).ready(function(){
        $('.item_photo_box').on('click', '.btn_add_wish_', function(){
            alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
            document.location.href = "../member/login.php";
            return false;
        });

        $('.item_photo_box').on('click', '.btn_add_cart_', function(){
            if($(this).data('mode') == 'cartIn') {
                var params = {
                    page: 'goods',
                    type: 'directCart',
                    goodsNo: $(this).data('goods-no'),
                    mainSno : '',
                };

                $.ajax({
                    method: "POST",
                    cache: false,
                    url: "../goods/layer_option.php",
                    data: params,
                    success: function (data) {
                        
                        $('#optionViewLayer').empty().append(data);
                        $('#optionViewLayer').find('>div').center();
                    },
                    error: function (data) {
                        alert(data.message);
                    }
                });
            }
        });

        $('.layer-cartaddconfirm').click(function(){
            location.href = '../order/cart.php';
        });

        $('.btn_move_cart').click(function() {
            location.href = '../order/cart.php';
        });

        $('.btn_move_wish').click(function() {
            location.href = '../mypage/wish_list.php';
        });

    });

    function gd_goods_option_view_result(params) {
        params += "&mode=cartIn";
        $.ajax({
            method: "POST",
            cache: false,
            url: "../order/cart_ps.php",
            data: params,
            success: function (data) {
                $("#optionViewLayer").addClass('dn');
                $("#addCartLayer").removeClass('dn');
                $('#layerDim').removeClass('dn');
                $("#addCartLayer").find('> div').center();
            },
            error: function (data) {
                alert(data.message);
            }
        });
    }
    //-->
</script>
                <!-- //상품 리스트 -->
            </div>
        </div>

        <div class=" ">
            <div class="pagination"><ul><li class="on"><span>1</span></li></ul></div>
        </div>

    </div>
    <!-- //goods_list_item -->
	<script type="text/javascript">
		$(document).ready(function () {

			$('form[name=frmList] select[name=pageNum]').change(function() {
				$('form[name=frmList]').get(0).submit();
			});
			
			// 정렬 순서 change 이벤트로 변경 2021-08-10
			$('form[name=frmList] select[name=sort]').change(function() {
				$('form[name=frmList]').get(0).submit();
			});

			/* 원본
			$('form[name=frmList] input[name=sort]').click(function() {
				$('form[name=frmList]').get(0).submit();
			});

			$(':radio[name="sort"][value=""]').prop("checked","checked")
			$(':radio[name="sort"][value=""]').next().addClass('on');
			*/

		});
	</script>
</div>
<!-- //content -->

            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->

	
<c:if test="${n>0||n%3!=0 }">
	<c:forEach var="i" begin="${n%3+1}" end="3" step="1">
			<td>&nbsp;</td>
	</c:forEach>
</c:if>

<c:if test="${n!=0 }">
	</tr>
</c:if>
	
<c:if test="${dataCount != 0}">
	<tr bgcolor="#FFFFFF">
	   <td align="center" height="30" colspan="3">${pageIndexList}</td>
    </tr>
</c:if>
	
<c:if test="${dataCount == 0}">
	<tr bgcolor="#FFFFFF">
       <td align="center" colspan="3" height="30">등록된 자료가 없습니다.</td>
    </tr>
</c:if>
	
</table>

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
					<span>통신판매업신고번호 : 제 2020-경기포천-0287 호 <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;8828501179&#39;); return false;">[사업자정보확인] </a></span> 
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
					<span>통신판매업신고번호 : 제 2020-서울서초-2839 호 <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;7768501398&#39;); return false;">[사업자번호조회]</a></span>
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
        <span><img src=".<%=cp %>/sool/product_files/logo_comodo.png" alt="보안서버 적용 확인"></span>
        <span><img src="<%=cp %>/sool/product_files/escrow_banner_kcp.png" alt="에스크로 서비스 확인" title="에스크로 서비스 확인" class="hand" onclick="javascript:window.open(&#39;https://admin.kcp.co.kr/Modules/escrow/kcp_pop.jsp?site_cd=GKPI1&#39;, &#39;escrowBanner&#39;, &#39;scrollbars=no, resizable=no, width=500, height=450&#39;);"></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>
<!-- //footer -->
    </div>
    <!-- //footer_wrap -->

	
    <div class="scroll_wrap">

        <!-- 우측 스크롤 배너 -->
        <div id="scroll_right" class="ban_fixed">
<div class="right_banner" style="display:none;">
<a href="https://www.homesool.com/goods/brand.php"><img src="<%=cp %>/sool/product_files/scroll-banner-right01.jpg" alt="스크롤 우측 배너" title="스크롤 우측 배너"></a></div>
<div class="scroll_right_cont" style="display: none;">
    <h4>TODAY VIEW</h4>

    <div class="scr_paging" style="display: none;">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="<%=cp %>/sool/product_files/btn_scroll_prev.png" alt="최근본 이전 상품"></button>
        <span><strong class="js_current">0</strong>/<span class="js_total" style="float:none;width:auto;">0</span></span>
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="<%=cp %>/sool/product_files/btn_scroll_next.png" alt="최근본 다음 상품"></button>
    </div>
    <!-- //scr_paging -->
</div>
<span class="btn_scroll_top"><a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006#TOP"><img src="<%=cp %>/sool/product_files/btn_scroll_top.png" alt="상단으로 이동"></a></span>

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

</div>
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



</body></html>