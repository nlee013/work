<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>홈술닷컴</title>
    
<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon">
<link rel="icon" href="image/favicon.ico" type="image/x-icon">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="csrf-token" content="MTY0NTg4NjY4ODIwMjM4MTMzNDc0MzgxNTQxODUzNTk4NTgwNDg5NDA2" />


    <meta property="og:type" content="website">
    <meta property="og:title" content="홈술닷컴">
    <meta property="og:url" content="https://www.homesool.com/goods/goods_list.php?cateCd=001007">
    <meta property="og:description" content="홈술닷컴">
    <meta property="og:locale" content="ko_KR">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="홈술닷컴">
    <meta name="twitter:description" content="홈술닷컴">

    <link rel="icon" href="/data/common/favicon.ico" type="image/x-icon" />
    
	<link rel="apple-touch-icon" sizes="114x114" href="/data/commonimg/defaultShopIcon144.png">
	<link rel="apple-touch-icon" href="/data/commonimg/defaultShopIcon72.png">

    <link type="text/css" rel="stylesheet" href="/css/reset.css?ts=1641264170">
    <link type="text/css" rel="stylesheet" href="/css/common/common.css?ts=1633510342">
    <link type="text/css" rel="stylesheet" href="/css/common/layer/layer.css?ts=1629176822">
    <link type="text/css" rel="stylesheet" href="/css/layout/layout.css?ts=1644384557">
    <link type="text/css" rel="stylesheet" href="/css/goods/list.css?ts=1639961213">
	<link type="text/css" rel="stylesheet" href="/css/button.css?ts=1631496990">
    <link type="text/css" rel="stylesheet" href="/css/goods/goods.css?ts=1643093663" />
    <link type="text/css" rel="stylesheet" href="/js/jquery/chosen/chosen.css?ts=1628125478" />	
	<link type="text/css" rel="stylesheet" href="/css/swiper-bundle.min.css?ts=1628212389" />
    <link type="text/css" rel="stylesheet" href="/css/custom.css?ts=1634606948" />


<script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
</script>
<script type="text/javascript" src="/data/skin/front/moment/js/gd_gettext.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/jquery/jquery.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/underscore/underscore-min.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/jquery/validation/jquery.validate.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/jquery/validation/additional-methods.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/numeral/numeral.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/global/accounting.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/global/money.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/jquery/chosen/chosen.jquery.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/jquery/placeholder/placeholders.jquery.min.js?ts=1618896613"></script>
<![if gt IE 8]>
<script type="text/javascript" src="/data/skin/front/moment/js/copyclipboard/clipboard.min.js?ts=1618896613"></script>
<![endif]>
<script type="text/javascript" src="/data/skin/front/moment/js/jquery/vticker/jquery.vticker.js?ts=1618896613"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/gd_ui.js?ts=1628146692"></script>

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

    <script type="text/javascript" src="/data/skin/front/moment/js/gd_common.js?ts=1630896617"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="/data/skin/front/moment/js/jquery/jquery-cookie/jquery.cookie.js"></script>
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

    <script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="/data/skin/front/moment/js/naver/naverCommonInflowScript.js?Path=/goods/goods_list.php&amp;Referer=https://www.homesool.com:443&amp;AccountID=s_151096acc2cf&amp;Inflow=homesool.com" id="naver-common-inflow-script"></script>
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
        <!-- End Facebook Pixel Code --><script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript">
            kakaoPixel('8600996210486851034').pageView();
        </script>
        <!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
        <script language='javascript'>
	        var _AceGID=(function(){var Inf=['gtc3.acecounter.com','8080','BS4A45352888202','AW','0','NaPm,Ncisy','ALL','0'];
	        var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ='https://'+Inf[0]+'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	        var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
        </script>
        <!-- AceCounter Log Gathering Script End -->

</head>

<body class="body-goods body-goods-list pc"  >
<div class="top_area"></div>
<div id="wrap">

<div id="header_warp">
	<div id="header">
   	 	<div class="header_top">
        <div class="header_top_cont">
		
		<div class="h1_logo"><!——><a href="../main/index.php" ><img src="/data/skin/front/moment/img/banner/701de34a823ef71ad6950510de136ece_23946.png"  alt="상단 로고" title="상단 로고"   /></a><!——></div>
			<a href="#;" class="n_btn_all_menu_open">전체카테고리</a>
		<div class="n_gnb_allmenu_wrap dn">
			<div class="menu_wrap">
				<div class="menu01">
						<p><a href="../mypage/index.php"><img src="/data/skin/front/moment/img/new/allmenu_mypage.png" alt="">마이페이지</a></p> 
						<p><a href="../mypage/shipping.php"><img src="/data/skin/front/moment/img/new/allmenu_addr.png" alt="">배송지관리</a></p>
						<p><a href="../service/index.php"><img src="/data/skin/front/moment/img/new/allmenu_cscenter.png" alt="">고객센터</a></p>
				</div>
				<div class="menu02">
					<dl>
						<dt><a href="/goods/choice.php">홈술제안</a></dt>
						<dd><a href="/goods/choice.php">홈술골라담기</a></dd>  
						<dd><a href="/goods/collection.php">홈술컬렉션</a></dd> 
						<dd><a href="/board/list.php?bdId=event">이벤트</a></dd> 
						<dd><a href="/goods/promotion_list.php">추천 홈술</a></dd>
						<dd><a href="/service/benefit.php">이달의 혜택</a></dd>
						<dd><a href="/goods/secret_main.php">비밀의 홈술</a></dd>
					</dl>
					<dl>

						<dt><a href="/goods/goods_list.php?cateCd=001">홈술카테고리</a></dt>

							<dd><a href="/goods/hs_today.php">오늘홈술</a></dd>
							<dd><a href="/goods/hs_subscribe.php">구독홈술</a></dd>

							<dd><a href="/goods/goods_list.php?cateCd=001004">막걸리</a></dd>
							<dd><a href="/goods/goods_list.php?cateCd=001010">증류주/소주/리큐르</a></dd>
							<dd><a href="/goods/goods_list.php?cateCd=001006">약주/청주</a></dd>
							<dd><a href="/goods/goods_list.php?cateCd=001007">와인/과실주</a></dd>
							<dd><a href="/goods/goods_list.php?cateCd=001008">홈닷푸드</a></dd>
							<dd><a href="/goods/goods_list.php?cateCd=001009">홈닷굿즈</a></dd>
							
					</dl> 
						<dl>
							<dt><a href="/goods/special_price.php">홈술특가</a></dt>
							<dd><a href="/goods/special_price.php?type=time">시간한정특가</a></dd>
							<dd><a href="/goods/special_price.php?type=stock">수량한정특가</a></dd>
						</dl> 
						<dl>
							<dt><a href="/goods/new.php">신제품 + 베스트</a></dt>
							<dd><a href="/goods/new.php">신제품</a></dd>
							<dd><a href="/goods/best.php">베스트</a></dd>
						</dl>  
						<dl>
							<dt><a href="/service/membership_lounge.php">홈술가이드</a></dt>
							<dd><a href="/service/membership_lounge.php">홈술 멤버십</a></dd>
							<dd><a href="/service/subscribe_guide.php">구독 홈술 가이드	</a></dd>
							<dd><a href="/service/delivery_type.php">배송유형별 안내</a></dd>
						</dl>   
						<dl>
							<dt><a href="/board/list.php?bdId=behindStory">매거진</a></dt>
							<dd><a href="/board/list.php?bdId=behindStory">MD 비하인드스토리</a></dd>
							<dd><a href="/board/list.php?bdId=breweryStory">양조장 스토리</a></dd>
							<dd><a href="/board/list.php?bdId=hsLife">홈술 라이프</a></dd>
						</dl>	  
						<dl>
							<dt><a href="/service/index.php">고객센터</a></dt>
							<dd><a href="/board/list.php?&bdId=notice">공지사항</a></dd>
							<dd><a href="/service/qa.php">1:1문의하기</a></dd>
							<dd><a href="/service/faq.php">FAQ</a></dd>
						</dl>
						
					</div>
				</div>
			</div>
			    
			<ul class="gnb_new"> 
				<li><a href="../goods/choice.php">홈술제안</a></li>
				<li><a href="../goods/goods_list.php?cateCd=001">홈술카테고리</a></li>
				<li><a href="../goods/special_price.php">홈술특가</a></li>
				<li><a href="../goods/new.php">New + Best </a></li>				 
				<!-- <li><a href="#">라이브 홈술</a></li> -->
				<li><a href="/service/membership_lounge.php">홈술가이드</a></li>	
				<li><a href="/board/list.php?bdId=behindStory">매거진</a></li>
			</ul>
			 
            <div class="hd_right">
				<ul class="top_member_box">
            	        <li><a href="../member/login.php">Login</a></li>
            	    <li><a href="../member/join_method.php">Join</a>
            	        <!--<span class="accent">
            	            <span><strong>2,000 P</strong></span>
            	        </span>-->
            	    </li>
            	    
            	    <li><a href="../service/index.php">CS Center</a></li>
            	</ul>
				<!-- 검색 폼 -->
				<div class="top_search_btn">
                    <span>&nbsp</span>
                    <img src="/data/skin/front/moment/img/new/btn_top_search.png" alt="">
                </div>
                <!-- //top_text_cont -->

				<div class="top_search" style="display:none;">
    <form name="frmSearchTop" id="frmSearchTop" action="../goods/goods_search.php" method="get">
        <fieldset>
            <legend>검색폼</legend> 
            <div class="top_search_cont">
				<div class="top_search_tit">궁금하신 내용을 검색해주세요.</div>
                <div class="top_text_cont">
                    <input type="text" id="search_form" name="keyword" class="top_srarch_text" title="오늘 드시고 싶은 술은 무엇인가요"  placeholder="오늘 드시고 싶은 술은 무엇인가요" autocomplete="off"/>
                    <input type="image" src="/data/skin/front/moment/img/new/btn_search35.png" id="btnSearchTop" class="btn_top_srarch" title="검색" value="검색" alt="검색"/>
                </div>
                <!-- //top_text_cont -->
                <div class="search_cont">
                    <input type="hidden" name="recentCount" value="10" />

                    <!-- //recom_box -->

                    <div class="recent_box_wrap">
                    	<div class="recent_box">
                    	    <dl class="js_recent_area">
                    	        <dt>최근검색어</dt>
                    	        <dd>최근 검색어가 없습니다.</dd>
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
                    	                <li ><a href="../goods/goods_search.php?keyword=%EB%8A%90%EB%A6%B0%EB%A7%88%EC%9D%84%EB%A7%89%EA%B1%B8%EB%A6%AC"># 느린마을막걸리</a></li> 	
                    	                <li ><a href="../goods/goods_search.php?keyword=%EC%8B%AC%EC%88%A0"># 심술</a></li> 	
                    	                <li ><a href="../goods/goods_search.php?keyword=%EB%AC%B4%EC%95%84%EC%8A%A4%ED%8C%8C%ED%83%90"># 무아스파탐</a></li> 	
                    	                <li ><a href="../goods/goods_search.php?keyword=%EB%B9%99%ED%83%84%EB%B3%B5"># 빙탄복</a></li> 	
                    	                <li ><a href="../goods/goods_search.php?keyword=%EC%A6%9D%EB%A5%98%EC%A3%BC"># 증류주</a></li> 	
                    	                <li ><a href="../goods/goods_search.php?keyword=%ED%95%B4%EC%B0%BD%EB%A7%89%EA%B1%B8%EB%A6%AC"># 해창막걸리</a></li> 	
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
	<div class=""><a href="#;" class="close"><img src="/data/skin/front/moment/img/new/btn_close38.png" alt="닫기"></a></div>
</div>
<!-- //top_search -->
				<!-- 검색 폼 -->
            	<ul class="icon_util">	   
					<li><a href="#;" class="icon_location">배송지역가능조회</a></li>
            		<li>
            	        <a href="../mypage/index.php" class="icon_mypage">MYPAGE</a>
            	    </li>
            	    <li><a href="../order/cart.php" class="icon_cart">장바구니 <strong>1</strong> </a> </li>	
            	</ul>
				<div class="right_coupon">
					<a href="../mypage/coupon.php"><em>00</em><span>홈술쿠폰</span></a>
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
				
				<input type="hidden" name="meshZonecode" readonly="readonly" value="" />
				<input type="hidden" name="meshZipcode" readonly="readonly" value=""/>

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
				<a href="#" class="local_home">HOME</a> 
  
				> 홈술카테고리
				> 와인/과실주
  
			
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
				<li class=""><a href="hs_today.php">오늘홈술</a></li>
                <li class=""><a href="hs_subscribe.php">구독홈술</a></li>	
                <li class="">
                    <a href="?cateCd=001004"><span>막걸리 <em>(36)</em></span></a>
                </li>
                <li class="">
                    <a href="?cateCd=001010"><span>증류주/소주/리큐르 <em>(33)</em></span></a>
                </li>
                <li class="">
                    <a href="?cateCd=001006"><span>약주/청주 <em>(15)</em></span></a>
                </li>
                <li class="on">
                    <a href="?cateCd=001007"><span>와인/과실주 <em>(29)</em></span></a>
                </li>
                <li class="">
                    <a href="?cateCd=001008"><span>홈닷푸드 <em>(29)</em></span></a>
                </li>
                <li class="">
                    <a href="?cateCd=001009"><span>홈닷굿즈 <em>(8)</em></span></a>
                </li>
            </ul>
        </div>

        <!-- 설문조사 배너 --><!-- 설문조사 배너 -->


        <div class="goods_pick_list mt100">
            <span class="pick_list_num">총 <strong>29</strong> 개의 상품이 있습니다.</span>
            <form name="frmList" action="">
                <input type="hidden" name="cateCd" value="001007"/>
                <div class="pick_list_box"> 
					<div class="filter"><a href="#;">FILTER</a></div>
                    <div class="choice_num_view">  
                        <select class="chosen-select" name="sort" style="width:120px;"> 
                            <option value="" selected='selected'>추천순</option>   
                            <option value="sellcnt" >판매인기순</option> 
                            <option value="price_asc" >낮은가격순</option> 
                            <option value="price_dsc" >높은가격순</option> 
							<option value="review" >상품평순</option> 
							<option value="date" >등록일순</option> 
                        </select>
                        <select class="chosen-select" name="pageNum" style="width:120px;">
                            <option value="10"  >10개씩보기</option>
                            <option value="20"  selected='selected'>20개씩보기</option>
                            <option value="30"  >30개씩보기</option>
                            <option value="40"  >40개씩보기</option>
                        </select>
                    </div>
                    <!-- //choice_num_view -->
                </div>
                <!-- //pick_list_box -->
			
				
				<div class="layer_filter dn">
	<div class="inner">  
		<div class="layer_content filter_list"> 
			
			<dl>
				<dt>혜택 전체</dt>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05009][]" value="05009001" data-item-key="05009" id="filter05009_05009001"  />
						<label for="filter05009_05009001" class="check " >특가상품</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05009][]" value="05009002" data-item-key="05009" id="filter05009_05009002"  />
						<label for="filter05009_05009002" class="check " >무료배송</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05009][]" value="05009003" data-item-key="05009" id="filter05009_05009003"  />
						<label for="filter05009_05009003" class="check " >기획전 상품</label>
					</span>	
				</dd>
			</dl> 
			<dl>
				<dt>배송 유형</dt>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05010][]" value="05010001" data-item-key="05010" id="filter05010_05010001"  />
						<label for="filter05010_05010001" class="check " >오늘홈술</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05010][]" value="05010002" data-item-key="05010" id="filter05010_05010002"  />
						<label for="filter05010_05010002" class="check " >일반홈술</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05010][]" value="05010003" data-item-key="05010" id="filter05010_05010003"  />
						<label for="filter05010_05010003" class="check " >구독홈술</label>
					</span>	
				</dd>
			</dl> 
			<dl>
				<dt>가격</dt>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05011][]" value="05011001" data-item-key="05011" id="filter05011_05011001"  />
						<label for="filter05011_05011001" class="check " >1만원 미만</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05011][]" value="05011002" data-item-key="05011" id="filter05011_05011002"  />
						<label for="filter05011_05011002" class="check " >1-2만원 미만</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05011][]" value="05011003" data-item-key="05011" id="filter05011_05011003"  />
						<label for="filter05011_05011003" class="check " >2-4만원 미만</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05011][]" value="05011004" data-item-key="05011" id="filter05011_05011004"  />
						<label for="filter05011_05011004" class="check " >4만원 이상</label>
					</span>	
				</dd>
			</dl> 
			<dl>
				<dt>종류</dt>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05004][]" value="05004001" data-item-key="05004" id="filter05004_05004001"  />
						<label for="filter05004_05004001" class="check " >탁주</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05004][]" value="05004002" data-item-key="05004" id="filter05004_05004002"  />
						<label for="filter05004_05004002" class="check " >약/청주</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05004][]" value="05004003" data-item-key="05004" id="filter05004_05004003"  />
						<label for="filter05004_05004003" class="check " >소주/증류주</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05004][]" value="05004004" data-item-key="05004" id="filter05004_05004004"  />
						<label for="filter05004_05004004" class="check " >과실주/와인</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05004][]" value="05004005" data-item-key="05004" id="filter05004_05004005"  />
						<label for="filter05004_05004005" class="check " >푸드</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05004][]" value="05004006" data-item-key="05004" id="filter05004_05004006"  />
						<label for="filter05004_05004006" class="check " >굿즈</label>
					</span>	
				</dd>
			</dl> 
			<dl>
				<dt>도수</dt>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05005][]" value="05005001" data-item-key="05005" id="filter05005_05005001"  />
						<label for="filter05005_05005001" class="check " >7도 이하</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05005][]" value="05005002" data-item-key="05005" id="filter05005_05005002"  />
						<label for="filter05005_05005002" class="check " >10도 이하</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05005][]" value="05005003" data-item-key="05005" id="filter05005_05005003"  />
						<label for="filter05005_05005003" class="check " >20도 이하</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05005][]" value="05005004" data-item-key="05005" id="filter05005_05005004"  />
						<label for="filter05005_05005004" class="check " >30도 이하</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05005][]" value="05005005" data-item-key="05005" id="filter05005_05005005"  />
						<label for="filter05005_05005005" class="check " >30도 이상</label>
					</span>	
				</dd>
			</dl> 
			<dl>
				<dt>주원료</dt>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05006][]" value="05006001" data-item-key="05006" id="filter05006_05006001"  />
						<label for="filter05006_05006001" class="check " >쌀</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05006][]" value="05006002" data-item-key="05006" id="filter05006_05006002"  />
						<label for="filter05006_05006002" class="check " >곡류</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05006][]" value="05006003" data-item-key="05006" id="filter05006_05006003"  />
						<label for="filter05006_05006003" class="check " >과실류</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05006][]" value="05006004" data-item-key="05006" id="filter05006_05006004"  />
						<label for="filter05006_05006004" class="check " >기타</label>
					</span>	
				</dd>
			</dl> 
			<dl>
				<dt>양조장 지역</dt>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05008][]" value="05008001" data-item-key="05008" id="filter05008_05008001"  />
						<label for="filter05008_05008001" class="check " >서울시</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05008][]" value="05008002" data-item-key="05008" id="filter05008_05008002"  />
						<label for="filter05008_05008002" class="check " >경기도</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05008][]" value="05008003" data-item-key="05008" id="filter05008_05008003"  />
						<label for="filter05008_05008003" class="check " >충청도</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05008][]" value="05008004" data-item-key="05008" id="filter05008_05008004"  />
						<label for="filter05008_05008004" class="check " >경상도</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05008][]" value="05008005" data-item-key="05008" id="filter05008_05008005"  />
						<label for="filter05008_05008005" class="check " >전라도</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05008][]" value="05008006" data-item-key="05008" id="filter05008_05008006"  />
						<label for="filter05008_05008006" class="check " >강원도</label>
					</span>	
				</dd>
	
				<dd>
					<span class="form_element">
						<input type="checkbox" name="filterSearchItem[05008][]" value="05008007" data-item-key="05008" id="filter05008_05008007"  />
						<label for="filter05008_05008007" class="check " >제주도</label>
					</span>	
				</dd>
			</dl> 

			<div class="layer_btm_btns center mt40">
				<ul> 
					<li><a href="javascript:void(0)" class="btn_em" id="btnFilterSelectSearch">검색하기</a></li>
				</ul>
				<div class="noti mt20">여러 조건을 선택해서 검색 할 수 있습니다.</div>
			</div>
		</div>
		<a href="#;" class="layer_close">닫기</a> 
	</div> 
</div>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000201" >
                        <div class="goods_img"><img src="/data/goods/22/01/03/1000000201/1000000201_wlist_080.jpg" width="280" alt="신애유자" title="신애유자" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000201" data-goods-nm="신애유자" data-goods-price="5605.00" data-goods-image-src="/data/goods/22/01/03/1000000201/1000000201_wlist_080.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000201"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000201">
                            <strong class="item_name">신애유자</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							5%									
							</span> 
                        <strong class="item_price">
                            <span  style="">5,605원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">5,900원 </del>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000200" >
                        <div class="goods_img"><img src="/data/goods/22/01/03/1000000200/1000000200_wlist_06.jpg" width="280" alt="치키피치" title="치키피치" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000200" data-goods-nm="치키피치" data-goods-price="6555.00" data-goods-image-src="/data/goods/22/01/03/1000000200/1000000200_wlist_06.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000200"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000200">
                            <strong class="item_name">치키피치</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							5%									
							</span> 
                        <strong class="item_price">
                            <span  style="">6,555원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">6,900원 </del>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000154" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000154/1000000154_wlist_061.jpg" width="280" alt="탄산가득 스파클링 음료술" title="탄산가득 스파클링 음료술" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000154" data-goods-nm="탄산가득 스파클링 음료술" data-goods-price="16830.00" data-goods-image-src="/data/goods/21/08/34/1000000154/1000000154_wlist_061.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000154"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000154">
                            <strong class="item_name">탄산가득 스파클링 음료술</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 
                        <strong class="item_price">
                            <span  style="">16,830원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">18,700원 </del>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000141" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000141/1000000141_wlist_095.jpg" width="280" alt="블루베리석류이야기 세트" title="블루베리석류이야기 세트" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000141" data-goods-nm="블루베리석류이야기 세트" data-goods-price="37000.00" data-goods-image-src="/data/goods/21/08/34/1000000141/1000000141_wlist_095.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000141"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000141">
                            <strong class="item_name">블루베리석류이야기 세트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span  style="">37,000원 </span>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000132" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000132/1000000132_wlist_086.jpg" width="280" alt="요새로제" title="요새로제" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000132" data-goods-nm="요새로제" data-goods-price="17005.00" data-goods-image-src="/data/goods/21/08/34/1000000132/1000000132_wlist_086.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000132"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000132">
                            <strong class="item_name">요새로제</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							5%									
							</span> 
                        <strong class="item_price">
                            <span  style="">17,005원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">17,900원 </del>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000131" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000131/1000000131_wlist_049.jpg" width="280" alt="와쥬블루" title="와쥬블루" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000131" data-goods-nm="와쥬블루" data-goods-price="17005.00" data-goods-image-src="/data/goods/21/08/34/1000000131/1000000131_wlist_049.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000131"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000131">
                            <strong class="item_name">와쥬블루</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							5%									
							</span> 
                        <strong class="item_price">
                            <span  style="">17,005원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">17,900원 </del>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000127" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000127/1000000127_wlist_067.jpg" width="280" alt="여포의꿈 화이트 스위트 375" title="여포의꿈 화이트 스위트 375" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000127" data-goods-nm="여포의꿈 화이트 스위트 375" data-goods-price="25000.00" data-goods-image-src="/data/goods/21/08/34/1000000127/1000000127_wlist_067.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000127"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000127">
                            <strong class="item_name">여포의꿈 화이트 스위트 375</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span  style="">25,000원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">25,000원 </del>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000126" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000126/1000000126_wlist_055.jpg" width="280" alt="마지끄무주 스위트" title="마지끄무주 스위트" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000126" data-goods-nm="마지끄무주 스위트" data-goods-price="25000.00" data-goods-image-src="/data/goods/21/08/34/1000000126/1000000126_wlist_055.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000126"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000126">
                            <strong class="item_name">마지끄무주 스위트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span  style="">25,000원 </span>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000123" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000123/1000000123_wlist_086.jpg" width="280" alt="두레앙와인" title="두레앙와인" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000123" data-goods-nm="두레앙와인" data-goods-price="22000.00" data-goods-image-src="/data/goods/21/08/34/1000000123/1000000123_wlist_086.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000123"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000123">
                            <strong class="item_name">두레앙와인</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span  style="">22,000원 </span>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000111" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000111/1000000111_wlist_050.jpg" width="280" alt="복분자음" title="복분자음" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000111" data-goods-nm="복분자음" data-goods-price="6750.00" data-goods-image-src="/data/goods/21/08/34/1000000111/1000000111_wlist_050.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000111"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000111">
                            <strong class="item_name">복분자음</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 
                        <strong class="item_price">
                            <span  style="">6,750원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">7,500원 </del>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000110" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000110/1000000110_wlist_04.jpg" width="280" alt="빙탄복" title="빙탄복" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000110" data-goods-nm="빙탄복" data-goods-price="3960.00" data-goods-image-src="/data/goods/21/08/34/1000000110/1000000110_wlist_04.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000110"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000110">
                            <strong class="item_name">빙탄복</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							10%									
							</span> 
                        <strong class="item_price">
                            <span  style="">3,960원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">4,400원 </del>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000108" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000108/1000000108_wlist_01.jpg" width="280" alt="심술 알쓰" title="심술 알쓰" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000108" data-goods-nm="심술 알쓰" data-goods-price="2900.00" data-goods-image-src="/data/goods/21/08/34/1000000108/1000000108_wlist_01.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000108"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000108">
                            <strong class="item_name">심술 알쓰</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span  style="">2,900원 </span>
                        </strong>
                    </div>
                    <!--- //item_money_box -->
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
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000088" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000088/1000000088_wlist_088.jpg" width="280" alt="요새로제" title="요새로제" class="middle"  /></div>
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>

 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000088">
                            <strong class="item_name">요새로제</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							5%									
							</span> 
                        <strong class="item_price">
                            <span  style="">17,005원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">17,900원 </del>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="/data/icon/goods_icon/icon_soldout.gif" alt="품절" />
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000087" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000087/1000000087_wlist_077.jpg" width="280" alt="댄싱파파" title="댄싱파파" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000087" data-goods-nm="댄싱파파" data-goods-price="5605.00" data-goods-image-src="/data/goods/21/08/34/1000000087/1000000087_wlist_077.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000087"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000087">
                            <strong class="item_name">댄싱파파</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							5%									
							</span> 
                        <strong class="item_price">
                            <span  style="">5,605원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">5,900원 </del>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000086" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000086/1000000086_wlist_038.jpg" width="280" alt="스윗마마" title="스윗마마" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000086" data-goods-nm="스윗마마" data-goods-price="5605.00" data-goods-image-src="/data/goods/21/08/34/1000000086/1000000086_wlist_038.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000086"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000086">
                            <strong class="item_name">스윗마마</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							5%									
							</span> 
                        <strong class="item_price">
                            <span  style="">5,605원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">5,900원 </del>
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
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000084" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000084/1000000084_wlist_066.jpg" width="280" alt="와쥬블루" title="와쥬블루" class="middle"  /></div>
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>

 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000084">
                            <strong class="item_name">와쥬블루</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							5%									
							</span> 
                        <strong class="item_price">
                            <span  style="">17,005원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">17,900원 </del>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="/data/icon/goods_icon/icon_soldout.gif" alt="품절" />
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000069" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000069/1000000069_wlist_038.jpg" width="280" alt="초선의꿈 로제 스위트 375" title="초선의꿈 로제 스위트 375" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000069" data-goods-nm="초선의꿈 로제 스위트 375" data-goods-price="20000.00" data-goods-image-src="/data/goods/21/08/34/1000000069/1000000069_wlist_038.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000069"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000069">
                            <strong class="item_name">초선의꿈 로제 스위트 375</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span  style="">20,000원 </span>
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000068" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000068/1000000068_wlist_077.jpg" width="280" alt="여포의꿈 레드 스위트 750" title="여포의꿈 레드 스위트 750" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000068" data-goods-nm="여포의꿈 레드 스위트 750" data-goods-price="20000.00" data-goods-image-src="/data/goods/21/08/34/1000000068/1000000068_wlist_077.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000068"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000068">
                            <strong class="item_name">여포의꿈 레드 스위트 750</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span  style="">20,000원 </span>
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
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000067" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000067/1000000067_wlist_053.jpg" width="280" alt="추사애플와인" title="추사애플와인" class="middle"  /></div>
                        <strong class="item_soldout_bg" style="background-image:url(/data/icon/goods_icon/soldout-1.png);">SOLD OUT</strong>

 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000067">
                            <strong class="item_name">추사애플와인</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
							<span class="per">										
							5%									
							</span> 
                        <strong class="item_price">
                            <span  style="">19,000원 </span>
                        </strong>
                        <del style="color:#888; text-decoration:line-through;">20,000원 </del>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                        
                        <img src="/data/icon/goods_icon/icon_soldout.gif" alt="품절" />
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
        <li  style="width:25%;">
            <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.php?goodsNo=1000000063" >
                        <div class="goods_img"><img src="/data/goods/21/08/34/1000000063/1000000063_wlist_087.jpg" width="280" alt="사과와인 500" title="사과와인 500" class="middle"  /></div>

						<div class="item_link">
							<div class="">
								<button type="button" class="btn_basket_get btn_add_wish_ " data-goods-no="1000000063" data-goods-nm="사과와인 500" data-goods-price="20000.00" data-goods-image-src="/data/goods/21/08/34/1000000063/1000000063_wlist_087.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="1" data-fixed-sales="option" data-fixed-order-cnt="option"><img src="/data/skin/front/moment/img/new/btn_basket_get.png" alt="찜하기"> </button>
								<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000063"><img src="/data/skin/front/moment/img/new/btn_basket_cart.png" alt="장바구니"> </button>
							</div>
						</div>
 
						
						<span class="icon_better"><img src="/data/skin/front/moment/img/new/icon_better.png" alt="골라담기"></span> 

						<!-- 튜닝 : 수량한정특가 배지 2021-07-12 -->
                    </a>
                    
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.php?goodsNo=1000000063">
                            <strong class="item_name">사과와인 500</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
                        <strong class="item_price">
                            <span  style="">20,000원 </span>
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
    <input type="hidden" name="mode" value="wishIn"/>
    <input type="hidden" name="cartMode" value=""/>
    <input type="hidden" name="optionFl" value=""/>
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
            <div class="pagination"><ul><li class="on"><span>1</span></li><li><a href="./goods_list.php?page=2&amp;cateCd=001007">2</a></li></ul></div>
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

    <div id="footer_wrap">
<div class="ft_notice">
	<div class="ft_notice_inner">
		<div class="tit">NOTICE</div>
		<ul>
			<li><a href="../board/view.php?bdId=notice&sno=13">CJ대한통운 배송 출고 제한 안내</a></li>
		</ul>
		<a href="/board/list.php?bdId=notice" class="more">더보기</a>
	</div>
</div>

<div id="footer">
    <div class="foot_list">
        <ul> 
            <li><a href="../service/agreement.php">이용약관</a></li>
            <li><a href="../service/private.php">개인정보처리방침</a></li>
            <li><a href="../service/guide.php">이용안내</a></li>
        </ul>
		<select class="chosen-select" style="width:180px;" onchange="if(this.value) window.open(this.value);">
			<option value="#;" >Family Site</option>  
			<option value="https://www.soolsool.co.kr/" target="_blank" >배상면주가</option>	 
			<option value="https://store.naver.com/attractions/detail?entry=plt&id=12400953&query=%EC%A0%84%ED%86%B5%EC%88%A0%EB%B0%95%EB%AC%BC%EA%B4%80%EC%82%B0%EC%82%AC%EC%9B%90 
" >느린마을산사원박물관 </option>
		</select>
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
					<span>통신판매업신고번호 : 제 2020-경기포천-0287 호 <a href="#" class="btn_licensee_info" onclick="gd_popup_bizInfo('8828501179'); return false;">[사업자정보확인] </a></span> 
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
					<span>통신판매업신고번호 : 제 2020-서울서초-2839 호 <a href="#" class="btn_licensee_info" onclick="gd_popup_bizInfo('7768501398'); return false;">[사업자번호조회]</a></span>
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
				<a href="../service/qa.php">1:1문의</a>		   
				<a href="../service/faq.php" class="playfair">FAQ</a>
			</div>
			
		</div>
    </div>
    <!-- //foot_cont -->
    <div class="foot_certify">
        <span><img src="/data/commonimg/logo_comodo.png" alt="보안서버 적용 확인"></span>
        <span><img src="/data/commonimg/escrow_banner_kcp.png"  alt="에스크로 서비스 확인" title="에스크로 서비스 확인" class="hand" onclick="javascript:window.open('https://admin.kcp.co.kr/Modules/escrow/kcp_pop.jsp?site_cd=GKPI1', 'escrowBanner', 'scrollbars=no, resizable=no, width=500, height=450');" /></span>
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
<a href="../goods/brand.php" ><img src="/data/skin/front/moment/img/banner/scroll-banner-right01.jpg"  alt="스크롤 우측 배너" title="스크롤 우측 배너"   /></a></div>
<div class="scroll_right_cont" style="display: none;">
    <h4>TODAY VIEW</h4>
    <ul>
        <li>
            <a href="../goods/goods_view.php?goodsNo=1000000218">
                <span class="photo">
                    <img src="/data/goods/22/02/08/1000000218/1000000218_main_053.png" alt="하얀까마귀">
                </span>
                <span class="src_box">
                    <em>하얀까마귀</em>
                        <strong>10,000<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
            <button data-goods-no="1000000218" type="button" class="btn_scroll_list_del" title="최근본 상품에서 삭제"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_list_del.png" alt="최근본 상품에서 삭제"></button>
        </li>
        <li>
            <a href="../goods/goods_view.php?goodsNo=1000000157">
                <span class="photo">
                    <img src="/data/goods/21/08/35/1000000157/1000000157_main_047.jpg" alt="느린마을약주">
                </span>
                <span class="src_box">
                    <em>느린마을약주</em>
                        <strong>22,410<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
            <button data-goods-no="1000000157" type="button" class="btn_scroll_list_del" title="최근본 상품에서 삭제"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_list_del.png" alt="최근본 상품에서 삭제"></button>
        </li>
        <li>
            <a href="../goods/goods_view.php?goodsNo=50">
                <span class="photo">
                    <img src="/data/goods/20/06/04/50/50_main_034.jpg" alt="아띠 3입">
                </span>
                <span class="src_box">
                    <em>아띠 3입</em>
                        <strong>16,500<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
            <button data-goods-no="50" type="button" class="btn_scroll_list_del" title="최근본 상품에서 삭제"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_list_del.png" alt="최근본 상품에서 삭제"></button>
        </li>
        <li>
            <a href="../goods/goods_view.php?goodsNo=115">
                <span class="photo">
                    <img src="/data/goods/21/05/18/115/115_main_025.jpg" alt="산사춘 3입">
                </span>
                <span class="src_box">
                    <em>산사춘 3입</em>
                        <strong>11,000<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
            <button data-goods-no="115" type="button" class="btn_scroll_list_del" title="최근본 상품에서 삭제"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_list_del.png" alt="최근본 상품에서 삭제"></button>
        </li>
        <li>
            <a href="../goods/goods_view.php?goodsNo=1000000206">
                <span class="photo">
                    <img src="/data/goods/22/02/06/1000000206/1000000206_main_079.jpg" alt="(기한임박) 해창막걸리 12도 3입">
                </span>
                <span class="src_box">
                    <em>(기한임박) 해창막걸리 12도 3입</em>
                        <strong>36,900<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
            <button data-goods-no="1000000206" type="button" class="btn_scroll_list_del" title="최근본 상품에서 삭제"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_list_del.png" alt="최근본 상품에서 삭제"></button>
        </li>

    </ul>
    <ul>
        <li>
            <a href="../goods/goods_view.php?goodsNo=85">
                <span class="photo">
                    <img src="/data/goods/21/01/14/85/85_main_046.jpg" alt="느린마을 모둠전">
                </span>
                <span class="src_box">
                    <em>느린마을 모둠전</em>
                        <strong>8,800<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
            <button data-goods-no="85" type="button" class="btn_scroll_list_del" title="최근본 상품에서 삭제"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_list_del.png" alt="최근본 상품에서 삭제"></button>
        </li>
        <li>
            <a href="../goods/goods_view.php?goodsNo=11">
                <span class="photo">
                    <img src="/data/goods/19/08/06/11/11_main_061.jpg" alt="느린마을막걸리 5입">
                </span>
                <span class="src_box">
                    <em>느린마을막걸리 5입</em>
                        <strong>19,900<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
            <button data-goods-no="11" type="button" class="btn_scroll_list_del" title="최근본 상품에서 삭제"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_list_del.png" alt="최근본 상품에서 삭제"></button>
        </li>

    </ul>

    <div class="scr_paging">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_prev.png" alt="최근본 이전 상품"></button>
        <span><strong class="js_current">0</strong>/<span class="js_total" style="float:none;width:auto;">2</span></span>
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_next.png" alt="최근본 다음 상품"></button>
    </div>
    <!-- //scr_paging -->
</div>
<span class="btn_scroll_top"><a href="#TOP"><img src="/data/skin/front/moment/img/common/btn/btn_scroll_top.png" alt="상단으로 이동"/></a></span>

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
<iframe name="ifrmProcess" src='/blank.php' style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- 외부 스크립트 -->


</body>
</html>
