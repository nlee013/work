<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	//String cp = request.getContextPath();
%>

<%@include file="soolTop.jsp" %>
<%
String[] image ={"haechangsool_01.jpg", "wlist_096.jpg", "17_wlist_076.jpg", "16_wlist_034.jpg",
				"11_main_061.jpg", "70_wlist_043.jpg", "69_wlist_090.jpg", "67_wlist_037.jpg",
				"50_wlist_05.jpg"};
String[] name = {"해창막걸리", "고기", "녹두전", "김치전", "메인막걸리", "돼지고기육전", "알새우전",
				"감자채전", "해물파전"};
String[] price = {"1,500", "1,500", "1,700", "1,300", "1,350", "1,400", "500", "1,000", "1,100"};
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    
<link rel="apple-touch-icon" sizes="114x114" href="/data/commonimg/defaultShopIcon144.png">
<link rel="apple-touch-icon" href="/data/commonimg/defaultShopIcon72.png">

<link type="text/css" rel="stylesheet" href="/css/reset.css?ts=1641264170">
    <link type="text/css" rel="stylesheet" href="/css/common.css?ts=1633510342">
    <link type="text/css" rel="stylesheet" href="/css/layer.css?ts=1629176822">
    <link type="text/css" rel="stylesheet" href="/css/layout.css?ts=1644384557">
    <link type="text/css" rel="stylesheet" href="/css/list.css?ts=1639961213">
	<link type="text/css" rel="stylesheet" href="/css/button.css?ts=1631496990">
    <link type="text/css" rel="stylesheet" href="/css/goods.css?ts=1643093663" />
    <link type="text/css" rel="stylesheet" href="/js/chosen.css?ts=1628125478" />	
	<link type="text/css" rel="stylesheet" href="/css/swiper-bundle.min.css?ts=1628212389" />
    <link type="text/css" rel="stylesheet" href="/css/custom.css?ts=1634606948" />


<script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
</script>
<script type="text/javascript" src="/js/gd_gettext.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/jquery.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/underscore-min.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/jquery.validate.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/additional-methods.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/numeral.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/accounting.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/money.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/chosen.jquery.min.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/placeholders.jquery.min.js?ts=1618896613"></script>
<![if gt IE 8]>
<script type="text/javascript" src="/js/clipboard.min.js?ts=1618896613"></script>
<![endif]>
<script type="text/javascript" src="/js/jquery.vticker.js?ts=1618896613"></script>
<script type="text/javascript" src="/js/gd_ui.js?ts=1628146692"></script>

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

    <script type="text/javascript" src="/js/gd_common.js?ts=1630896617"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="/js/jquery/jquery-cookie/jquery.cookie.js"></script>
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
<script type="text/javascript" src="/naverCommonInflowScript.js?Path=/goods/goods_list.php&amp;Referer=https://www.homesool.com:443&amp;AccountID=s_151096acc2cf&amp;Inflow=homesool.com" id="naver-common-inflow-script"></script>
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

<script type="text/javascript">

function fnCart(name, price) {
	//alert("Name : " + name + "\nPrice : " + price);
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "contents/pro/CartPro.jsp?name=" + name + "&price=" + price;
	}
}

function fnView() {
	if(confirm("장바구니를 보시겠습니까?")){
		location.href = "contents/view/CartView.jsp";
	}
}
</script>

</head>

<body class="body-goods body-goods-list pc"  >

<div class="top_area"></div>

   <div class="goods_list_item_tit">
       <h2 class="tit_38 center">홈술카테고리</h2>
   </div>
        
   <div class="list_item_category mt40">
       <ul>
           <li class=""><a href="hs_today.php">오늘홈술</a></li>
           <li class=""><a href="hs_subscribe.php">구독홈술</a></li>	
           <li class=""><a href="?cateCd=001004"><span>막걸리 <em>(36)</em></span></a></li>
           <li class=""><a href="?cateCd=001010"><span>증류주/소주/리큐르 <em>(33)</em></span></a></li>
           <li class=""><a href="?cateCd=001006"><span>약주/청주 <em>(15)</em></span></a></li>
           <li class="on"><a href="?cateCd=001007"><span>와인/과실주 <em>(29)</em></span></a></li>
           <li class=""><a href="?cateCd=001008"><span>홈닷푸드 <em>(29)</em></span></a></li>
           <li class=""><a href="?cateCd=001009"><span>홈닷굿즈 <em>(8)</em></span></a></li>
       </ul>
    </div>
    
 </div>   

<div align="center">
	<h3>[홈술 고르기]</h3>
	<table border="1">
		<tr align="right">
			<td colspan="3">
				<input type="button" value="장바구니 보기" onclick="fnView()" />
			</td>
		</tr>
		<%
		for(int i = 0; i < image.length; i++) {
			if(i % 3 == 0) { 
				out.println("<tr align='center'>");
			}
			out.println("<td>");
				out.println("<table>");
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<image src = 'image/" + image[i] + "' width='150' height='150' />");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>" + name[i] + "</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>￦" + price[i] + "원</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							//한 줄로 쓰기
							//out.println("<input type='button' value='장바구니 담기' onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
							//두 줄로 쓰기, 닫는 큰 따옴표와 괄호 옆의 띄어쓰기 필수
							out.println("<input type='button' value='장바구니 담기' ");
							out.println("onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
						out.println("</td>");
					out.println("</tr>");
				out.println("</table>");
			out.println("</td>");
			if(i % 3 == 2) {
				out.println("</tr>");
			}
		}
		%>	
	</table>
</div> 
    
</body>
</html>