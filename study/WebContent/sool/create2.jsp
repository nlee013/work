<%@page import="java.util.GregorianCalendar"%>
<%@page import="com.sool.SoolUserDTO"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	Calendar cal = Calendar.getInstance();
	
	//오늘날짜
	int nowYear = cal.get(Calendar.YEAR);//2022
	int nowMonth = cal.get(Calendar.MONTH)+1;//2
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);//26
	
	//클라이언트가 넘겨준 데이터
	String strYear = request.getParameter("user_bir1");
	String strMonth = request.getParameter("user_bir2");
	String strDay = request.getParameter("user_bir3");
	
	int user_bir1 = nowYear; //2022
	int user_bir2 = nowMonth;//2
	int user_bir3 = nowDay; //26
	
	if(strYear!=null){
		user_bir1 = Integer.parseInt(strYear);
	}
	
	if(strMonth!=null){
		user_bir2 = Integer.parseInt(strMonth);
	}
	
	if(strDay!=null){
		user_bir3 = Integer.parseInt(strDay);
	}
	
	SoolUserDTO dto = new SoolUserDTO();
	
	cal.set(user_bir1, user_bir2-1, user_bir3);

	//getActualMaximum 사용하여 월에따른 날짜 구하기
	int max = cal.getMaximum(Calendar.DAY_OF_MONTH);
	
	
	
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>홈술 가이드</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="csrf-token" content="MTY0NjAyNjEyNjU5NTE2NDM2MzMxMzA1MTk3MDU4MTM3NDQ3NDM2MTU1">


    <meta property="og:type" content="website">
    <meta property="og:title" content="홈술닷컴">
    <meta property="og:url" content="https://www.homesool.com/service/membership_lounge.php">
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


    <script src="<%=cp%>/sool/main_files/AceCounter_AW.js.다운로드"></script><script src="<%=cp%>/sool/main_files/1135465033646646" async=""></script><script src="<%=cp%>/sool/main_files/identity.js.다운로드" async=""></script><script async="" src="<%=cp%>/sool/main_files/fbevents.js.다운로드"></script><script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/gd_gettext.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/underscore-min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/jquery.validate.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/additional-methods.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/numeral.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/accounting.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/money.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/chosen.jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/placeholders.jquery.min.js.다운로드"></script>
    <!--[if gt IE 8]-->
    <script type="text/javascript" src="<%=cp%>/sool/main_files/clipboard.min.js.다운로드"></script>
    <!--[endif]-->
    <script type="text/javascript" src="<%=cp%>/sool/main_files/jquery.vticker.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/main_files/gd_ui.js.다운로드"></script>

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

    <script type="text/javascript" src="<%=cp%>/sool/main_files/gd_common.js.다운로드"></script>


    

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

    <script type="text/javascript" src="<%=cp%>/sool/main_files/wcslog.js.다운로드"></script>
<script type="text/javascript" src="<%=cp%>/sool/main_files/naverCommonInflowScript.js.다운로드" id="naver-common-inflow-script"></script>
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
        <!-- End Facebook Pixel Code --><script type="text/javascript" charset="UTF-8" src="<%=cp%>/sool/main_files/kp.js.다운로드"></script>
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
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
          
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

             
                if (data.userSelectedType === 'R') { //도로명 주소
                    addr = data.roadAddress;
                } else { // 지번 주소
                    addr = data.jibunAddress;
                }


                if(data.userSelectedType === 'R'){
                   
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                   
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                   
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

              
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("addr1").value = addr;
                
                document.getElementById("addr2").focus();
            }
        }).open();
    }
    
    
    function selectedEmail(frm) {
    	
   	 frm.textValue.value = frm.selectBox.options[frm.selectBox.selectedIndex].text;  	
     frm.user_email.value = frm.selectBox.options[frm.selectBox.selectedIndex].value;
     
    }
    
   
</script>
<script type="text/javascript">

function info(){
	
	var f = document.myForm;
	
	var sy =<%=nowYear%>-80;
	
	
var fy =<%=user_bir1%> -80;
	
	for(i=0;i<81;i++){
		
		f.user_bir1[i] = new Option(fy,fy);
		
		if(f.user_bir1[i].value==<%=user_bir1%>){
			f.user_bir1[i].selected = true;
			
		}
		fy++;
	}
	
	for(j=0;j<12;j++){
		f.user_bir2[j] = new Option(j+1,j+1);
		
		
	}
	f.user_bir2[<%=user_bir2%>-1].selected = true;
	
	
	
	
	for(k=0;k<<%=max%>;k++){
		f.user_bir3[k] = new Option(k+1,k+1);
	}
	
	f.user_bir3[<%=user_bir3%>].selected = true;

}

function signUp() {
	
	var f = document.myForm;
	
	if(!f.user_id.value){
		alert("아이디를 입력하세요")
		f.user_id.focus();
		return;
		
	}
	
	//아이디 중복검사

	
	if(!f.user_pwd.value){
		alert("비밀번호를 입력하세요")
		f.user_pwd.focus();
		return;
	}
	
	if(!f.user_pwdck.value){
		alert("비밀번호 확인을 입력하세요")
		f.user_pwdck.focus();
		return;
	}
	
	if(f.user_pwd.value!=f.user_pwdck.value){
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다")
		
		return;
	}
	
	if(!f.user_nick.value){
		alert("닉네임을 입력하세요")
		f.user_nick.focus();
		return;
	}
	
	//닉네임중복검사

	if(!f.user_name.value){
		alert("이름를 입력하세요")
		f.user_name.focus();
		return;
	}
	
	if(!f.user_email.value){
		alert("이메일을 입력하세요")
		f.user_email.focus();
		return;
	}
	
	//이메일중복검사
	
	if(!f.user_tel.value){
		alert("전화번호를 입력하세요")
		f.user_tel.focus();
		return;
	}
	
	if(!f.user_addr1.value){
		alert("우편번호 찾기를 누르세요")	
		return;
	}
	
	if(!f.user_addr2.value){
		alert("상세주소를 입력하세요")
		f.user_addr2.focus();
		return;
	}
	
	if(!f.user_gender.value){
		alert("성별을 선택하세요")
		return;
	}
	
	
	f.action = "<%=cp%>/homesool/create2_ok.com";
	f.submit();

}

function cancel() {
	
	var f = document.myForm;
	
	f.action = "<%=cp%>/homesool/main.com";
	f.submit();
	
}

</script>
<title>회원가입 정보입력</title>
</head>

<body class="body-main body-index pc" onload="info();">
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
                
<!-- 애매 -->
				<div class="top_search" style="display:none;">
    <form name="frmSearchTop" id="frmSearchTop" action="https://www.homesool.com/goods/goods_search.php" method="get" novalidate="novalidate">
        <fieldset>
            <legend>검색폼</legend> 
            <div class="top_search_cont">
				<div class="top_search_tit">궁금하신 내용을 검색해주세요.</div>
                <div class="top_text_cont">
                    <input type="text" id="search_form" name="keyword" class="top_srarch_text" title="오늘 드시고 싶은 술은 무엇인가요" placeholder="오늘 드시고 싶은 술은 무엇인가요" autocomplete="off">
                    <input type="image" src="./홈술닷컴_files/btn_search35.png" id="btnSearchTop" class="btn_top_srarch" title="검색" value="검색" alt="검색">
                </div>
                <!-- //top_text_cont -->
                <div class="search_cont">
                    <input type="hidden" name="recentCount" value="10">

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
	<div class=""><a href="https://www.homesool.com/service/delivery_type.php#;" class="close"><img src="./홈술닷컴_files/btn_close38.png" alt="닫기"></a></div>
</div>
<!-- //top_search -->
				<!-- 검색 폼 -->
            	<ul class="icon_util">	   
					<li><a href="https://www.homesool.com/service/delivery_type.php#;" class="icon_location">배송지역가능조회</a></li>
            		<li>
            	        <a href="https://www.homesool.com/mypage/index.php" class="icon_mypage">MYPAGE</a>
            	    </li>
            	    <li><a href="https://www.homesool.com/order/cart.php" class="icon_cart">장바구니 <strong>0</strong> </a> </li>	
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

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="https://www.homesool.com/service/delivery_type.php#" class="local_home">HOME</a> &gt; 홈술가이드 &gt; 배송유형별 안내</em>
                </div>
            </div>
            <!-- //location_wrap -->

	
	 
  	 
    	 
 	 

            <div class="sub_content">

                <!-- //side_cont -->


<center>
	<div class="wrap-login100 p-t-50 p-b-90" align="center">
		<form class="login100-form validate-form flex-sb flex-w">
			<span style="font-size: 20pt">
				<b>회원 가입</b>
			</span>
			<br/><br/>
		
			<div align="center">
				홈술닷컴의 회원이 되셔서 회원등급할인/할인쿠폰/적립금 등 다양한 서비스를 받으세요.
			</div>
			<br/><br/>		
			<div class="flex-sb-m w-full p-t-3 p-b-24"></div>
			<div>	
			<center>
				<div style="width :150px; height :65px; color : #000000; background-color: #ededed; float: center;">
					<br/>STEP 1 약관동의
				</div>
			</center>
				<div style="width :150px; height :65px; color : #000000; background-color: #ededed; float: center;">
					<center><br/>STEP 2 정보입력</center>
				</div>

				<div style="width :150px; height :65px; color : #fff; background-color: #eda71a; ">
					<center><br/>STEP 3 가입완료</center>
				</div>
				<br/><br/>
			
</form>
</div>
<br/><br/>



<form action="" method="post" name="myForm">
<!-- 기본정보 -->
<table width="800" height="400" align="center">
<tr>
	<td colspan="2"><b>기본정보</b></td>
	<td align="right">*표시는 반드시 입력하셔야 하는 항목입니다</td>
	
</tr>

 <tr><td colspan="3" height="3" bgcolor="#eda71a" align="center"></td></tr>
 
 <tr>
 	<td>아이디(*)</td>
 	<td colspan="2"><input type="text" name="user_id"></td>
 </tr>

 <tr>
 	<td>${ovId }</td>
 </tr>
 
 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>비밀번호(*)</td>
 	<td colspan="2"><input type="password" name="user_pwd"></td>
 </tr>
 
 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>비밀번호 확인(*)</td>
 	<td colspan="2"><input type="password" name="user_pwdck"></td>
 </tr>
 
  <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>닉네임(*)</td>
 	<td colspan="2"><input type="text" name="user_nick"></td>
 </tr>

 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>이름(*)</td>
 	<td colspan="2"><input type="text" name="user_name"></td>
 </tr>
 
 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>이메일(*)</td>
 	
 	<td><input type="text" name="user_email"></td>
 	<td><select name="selectBox" onchange="selectedEmail(this.form);">
 		<option value="@">직접입력</option>
 		<option value="@naver.com">naver.com</option>
 		<option value="@hanmail.net">hanmail.net</option>
 		<option value="@daum.net">daum.net</option>
 		<option value="@nate.com">nate.com</option>
 		<option value="@hotmail.com">hotmail.com</option>
 		<option value="@gmail.com">gmail.com</option>
 		<option value="@icloud.com">icloud.com</option>
 	</select></td>
 </tr>

 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td>휴대폰번호(*)</td>
 	<td colspan="2"><input type="text" name="user_tel" value="-없이입력하세요."></td>
 </tr>
 
 <tr><td colspan="3" height="1" bgcolor="#cccccc" align="center"></td></tr>
 
 <tr>
 	<td rowspan="3">주소(*)</td>
 	<td><input type="text" id="sample6_postcode"></td>
 	<td><input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"></td>
 </tr>
 
 <tr>
 	<td colspan="2"><input type="text" name="user_addr1" id="addr1" ></td>
 </tr>
 <tr>	
 	<td colspan="2"><input type="text" name="user_addr2" id="addr2"></td>
 	<td><input type="hidden" id="sample6_extraAddress" ></td>
 </tr>
 </table>
 
 
 <!-- 부가정보  -->
 <table width="800" height="100" align="center">
 <tr><td colspan="4" height="3" bgcolor="#eda71a" align="center"></td></tr>
 
 <tr>
 	<td>성별(*)</td>
 	<td><input type="radio" name="user_gender" value="male">남자</td>
 	<td><input type="radio" name="user_gender" value="female">여자</td>
 </tr>
 
  <tr><td colspan="4" height="1" bgcolor="#cccccc" align="center"></td></tr>
  
 <tr>
 	<td>생일(*)</td>
 	<td><select name="user_bir1" onchange="change();">
 	</select></td>
 	<td><select name="user_bir2" onchange="change();">
 	</select></td>
 	<td><select name="user_bir3" onchange="change();">
 	</select></td>
 </tr>
 
  <tr><td colspan="4" height="1" bgcolor="#cccccc" align="center"></td></tr>
  
 <tr>
 	<td>추천인아이디</td>
 	<td colspan="2"><input type="text" name="user_rid"></td>
 </tr>
 
 


</table>
<input type="hidden" name="user_date">
<input type="hidden" name="textValue">
</form>
<table>

</table>

<div class="flex-sb-m w-full p-t-3 p-b-24" align="center"></div>				
	<br/><br/>
	
	<div class="inGridBtns">
	
		<div>
			<button onclick="cancel();" class="login100-form-btn" style="width: 200px;
			border: 2px solid #ededed ; color: #000000; background-color: #fff;">
				취소					
			</button>
		</div>		
			
		<div>	
			<button onclick="signUp();" class="login100-form-btn" style="width: 200px;
			border: 2px solid #eda71a ; color: #000000; background-color: #eda71a;"">
				회원가입
			</button>
		</div>
		
	</div>

<div class="flex-sb-m w-full p-t-3 p-b-24" align="center"></div>	
</center>
</body>
</html>