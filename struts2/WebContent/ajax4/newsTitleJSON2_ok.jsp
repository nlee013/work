<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%!

String[] newsTitle = {
			
			"싸이월드(CyWORLD)는 대한민국의 소셜 네트워크 서비스이다.",
			"흔히 싸이라고 줄여 말하기도 하는데, 이는 사이버(cyber)를 뜻하지만",
			"'사이', 곧 '관계'를 뜻하기도 한다. 또, 미국의 페이스북, 마이스페이스와",
			"영국의 Bebo와 같은 개인 가상 공간으로, 싸이월드 서비스에 포함된 '미니홈피'는",
			"이미 고유명사가 되어 사용될 정도로 영향력을 가지게 되었다.[1] 2007년 10월 19일",
			"전 세계에 타전되는 미국의 뉴스전문방송 CNN은 싸이월드를 한국의 앞서가는 IT문화",
			"중 하나로 소개하기도 하였다라라."
	};
	
String[] newsPublisher = {

		"중앙", "초선일보", "올리브일", "BBBC", "KBC", "MBB", "JDBC"
};

%>

{
	"count": <%=newsTitle.length %>,
	"titles":[
		
<%

		for(int i = 0; i < newsTitle.length; i++){
			
			out.print("{");
			out.print("headline:\"" + newsTitle[i] + "\"");
			out.print(",");
			out.print("publisher:\"" + newsPublisher[i] + "\"");
			out.print("}");
			
			if(i != newsTitle.length - 1){
				out.print(",");
			}
		}


%>		

	]
}