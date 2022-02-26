<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	//String cp = request.getContextPath();
%>
<%@include file="adminTop.jsp" %>
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
<title>Insert title here</title>
</head>
<body>

function ProductModify(name, price) {
	location.href = "/admin/ProdModForm.jsp?name=" + name + "&price=" + price;
}

</script>
</head>
<body>
<div align="center">
	<h3>[오늘의 특가]</h3>
	<table border="1">
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
							out.println("<input type='button' value='상품정보수정' ");
							out.println("onclick='ProductModify(\"" + name[i] + "\", \"" + price[i] + "\")' />");
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