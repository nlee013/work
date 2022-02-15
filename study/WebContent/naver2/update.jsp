<%@page import="com.util.DBConn"%>
<%@page import="com.naver2.Naver2DTO"%>
<%@page import="com.naver2.Naver2DAO"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String id = request.getParameter("id");
	
	Connection conn = DBConn.getConnection();
	Naver2DAO dao = new Naver2DAO(conn);
	
	Naver2DTO dto = dao.getReadData(id);
	
	DBConn.close();
	
	if(dto==null)
		response.sendRedirect("list.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>네이버</title>
<script type="text/javascript">

	function sendIt(){
		
		var f = document.myForm;
		
		f.action = "<%=cp %>/naver2/update_ok.jsp";
		f.submit();
	
	}

</script>

<style type="text/css">

body {
	font-size: 10pt;
	background-color:#F9F9F9;
}


</style>

</head>
<body>


<form action="" method="post" name="myForm">


<table align="center">

<tr>
	<td align="center"><img src ="./image/1.JPG" width="250px" ></td>
</tr>

<tr>
	<td>아이디</td>
</tr>
<tr><td>
	<table style="border: 1px solid;width: 450px;height: 40px;" background="#fff;">
	<tr>
	<td><input type="text" name="id" 
	style="border: 0; width: 380px;height: 35px;"/></td>
	<td style="background-color: #fff;font-size: 11px;
	width: 30px;height: 35px;">@naver.com</td>
	</tr></table></td>
</tr>

<tr>
	
</tr>

<tr>
	<td>비밀번호</td>
</tr>

<tr>
	<td><input type="text" name="pwd"  value="<%=dto.getPwd() %>" style="width: 400px; height: 40px;"/></td>
</tr>

<tr>
	<td>이름</td>
</tr>

<tr>
	 <td><%=dto.getName() %> </td>
</tr>

<tr>
	<td>생년월일</td>
</tr>

<tr>
	<td><%=dto.getYear() %></td>
	<td><%=dto.getMonth() %></td>
	<td><%=dto.getDay() %> </td>
</tr>

<tr>
	<td>성별</td>
</tr>

<tr>
	<td><%=dto.getGender() %>"	</td>
</tr>

<tr>
	<td>본인 확인 이메일(선택)</td>
</tr>
	
<tr>
	<td><input type="text" name="email" value="<%=dto.getEmail() %>"style="width: 400px; height: 40px;"/></td>
</tr>

<tr>
	<td>휴대전화</td>
</tr>

<tr>
	<td><select name="phone1" value="<%=dto.getPhone1() %>" style="width: 400px; height: 40px ;">
		  <option value="대한민국 +82">대한민국 +82</option>
		  <option value="+83">일본 +83</option>
		  </select></td>
</tr>
		
<tr>
	<td><input type="text" name="phone2" value="<%=dto.getPhone2() %>" style="width: 290px; height: 40px;"/> <img src = "./image/4.JPG" width="100" height="42" align="center"></td>
</tr>

<tr>
<td>
<input type="hidden" name="id" value="<%=dto.getId()%>"/>
<input type="hidden" name="name" value="<%=dto.getName()%>"/>
<input type="hidden" name="year" value="<%=dto.getYear()%>"/>
<input type="hidden" name="month" value="<%=dto.getMonth()%>"/>
<input type="hidden" name="day" value="<%=dto.getDay()%>"/>
<input type="hidden" name="gender" value="<%=dto.getGender()%>"/>
</td>
	<td align="center" ><img src ="./image/5.JPG" width="400" onclick="javascript:location.href='<%=cp%>/naver2/list.jsp';"></td>
</tr>


</table>
</form>

</body>
</html>