<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0059)https://www.homesool.com/goods/goods_list.php?cateCd=001006 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>홈술닷컴</title>
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

    <link type="text/css" rel="stylesheet" href="./홈술닷컴_files/reset.css">
    <link type="text/css" rel="stylesheet" href="./홈술닷컴_files/common.css">
    <link type="text/css" rel="stylesheet" href="./홈술닷컴_files/layer.css">
    <link type="text/css" rel="stylesheet" href="./홈술닷컴_files/layout.css">
    <link type="text/css" rel="stylesheet" href="./홈술닷컴_files/list.css">
	<link type="text/css" rel="stylesheet" href="./홈술닷컴_files/button.css">
    <link type="text/css" rel="stylesheet" href="./홈술닷컴_files/goods.css">
    <link type="text/css" rel="stylesheet" href="./홈술닷컴_files/chosen.css">	
	<link type="text/css" rel="stylesheet" href="./홈술닷컴_files/swiper-bundle.min.css">
    <link type="text/css" rel="stylesheet" href="./홈술닷컴_files/custom.css">


    <script src="./홈술닷컴_files/AceCounter_AW.js.다운로드"></script><script src="./홈술닷컴_files/1135465033646646" async=""></script><script src="./홈술닷컴_files/identity.js.다운로드" async=""></script><script async="" src="./홈술닷컴_files/fbevents.js.다운로드"></script><script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="./홈술닷컴_files/gd_gettext.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/underscore-min.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/jquery.validate.min.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/additional-methods.min.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/numeral.min.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/accounting.min.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/money.min.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/chosen.jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/placeholders.jquery.min.js.다운로드"></script>
    <!--[if gt IE 8]-->
    <script type="text/javascript" src="./홈술닷컴_files/clipboard.min.js.다운로드"></script>
    <!--[endif]-->
    <script type="text/javascript" src="./홈술닷컴_files/jquery.vticker.js.다운로드"></script>
    <script type="text/javascript" src="./홈술닷컴_files/gd_ui.js.다운로드"></script>

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

    <script type="text/javascript" src="./홈술닷컴_files/gd_common.js.다운로드"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="./홈술닷컴_files/jquery.cookie.js.다운로드"></script>
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

    <script type="text/javascript" src="./홈술닷컴_files/wcslog.js.다운로드"></script>
<script type="text/javascript" src="./홈술닷컴_files/naverCommonInflowScript.js.다운로드" id="naver-common-inflow-script"></script>
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
        <!-- End Facebook Pixel Code --><script type="text/javascript" charset="UTF-8" src="./홈술닷컴_files/kp.js.다운로드"></script>
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

${imagePath}
${dto.getProd_sImg}


<c:forEach var="dto" items="${lists}">
<img src="${imagePath}/${dto.prod_sImg}${dto.prod_no }" width="180" height="180"
	    	style="border: 1px; border-radius: 2em;"/>

</c:forEach>

<c:forEach var="SoolProdDTO" items="${lists}" >

    <p>${dto.prod_name } : <c:out value="${imagePath}/${dto.prod_sImg}" /></p>

</c:forEach>

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
	    	<img src="${imagePath}/${dto.prod_sImg}" width="180" height="180" 
	    	style="border: 1px; border-radius: 2em;"/>
	    </a>
	    <br/>${dto.prod_name}&nbsp;
	</td>
	
	<c:set var="n" value="${n+1}"/>
</c:forEach>
	
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



</body>
</html>