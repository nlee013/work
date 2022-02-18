<%@page import="com.util.MyUtil"%>
<%@page import="com.guest.GuestDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.util.DBConn"%>
<%@page import="com.guest.GuestDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	GuestDAO dao = new GuestDAO(DBConn.getConnection());
	
	MyUtil myUtil = new MyUtil();
	
	//넘어온 페이지 번호(myutil, article, updated, deleted...)
		String pageNum = request.getParameter("pageNum");
		
		//처음 실행시
		int currentPage = 1;
		
		if(pageNum != null){
			
			//currentPage 덮어씌우기
			currentPage = Integer.parseInt(pageNum);//변수명을 써야되므로 ""쓰면 안됌
		}
		
		//전체 데이터 갯수 구하기
		int dataCount = dao.getDataCount();//34
			
		//하나의 페이지에 출력될 데이터 갯수
		int numPerPage = 3;
			
		//전체 페이지 갯수
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);
		
		//데이터 삭제시, 페이지가 줄어들 경우
		if(currentPage > totalPage){
			
			currentPage = totalPage;
		}
		
		//가져올 데이터의 시작과 끝
		int start = (currentPage - 1)*numPerPage + 1;
		int end = currentPage*numPerPage;
		
		List<GuestDTO> lists = null;
			
		lists = dao.getLists(start, end);//데이터 3개 가져옴
		
		//페이징 처리
		
		String listUrl = "guest.jsp";
		
		String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
		
		String articleUrl = cp + "guest/guest.jsp";
	
		DBConn.close();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>

<link rel="stylesheet" href="<%=cp%>/guest/data/style.css"/>

<script type="text/javascript" src="<%=cp%>/guest/data/guest.js"></script>
<script type="text/javascript">
	
	function isDelete(num) {
		
		if(confirm("위 자료를 삭제하시겠습니까?")){
			
			location.href ="<%=cp%>/guest/delete.jsp?num=" + num + "&pageNum=<%=currentPage%>";
		}
		
	}


</script>

</head>
<body>
<br/><br/>

<table width="560" border="2" cellpadding="0" cellspacing="0" bordercolor="#d6d4a6" style="margin: auto;">
<tr height="40">
	<td style="padding-left: 20px;">
	<b>방 명 록</b>
	</td>
</tr>
</table>

<form action="" method="post" name="myForm">

<table width="560" border="0" cellpadding="0" cellspacing="3" style="margin: auto;">
<tr>
	<td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td>
</tr>

<tr>
	<td width="20%" headers="30" bgcolor="#eeeeee" style="padding-left: 20px;">작성자</td>
	<td width="80%" style="padding-left: 10px;">
	 <input type="text" name="name" size="35" maxlength="20" class="boxTF"/>
	</td>
</tr>

<tr>
	<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
</tr>

<tr>
	<td width="20%" headers="30" bgcolor="#eeeeee" style="padding-left: 20px;">E-Mail</td>
	<td width="80%" style="padding-left: 10px;">
	 <input type="text" name="email" size="35" maxlength="20" class="boxTF"/>
	</td>
</tr>

<tr>
	<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
</tr>

<tr>
	<td width="20%" headers="30" bgcolor="#eeeeee" style="padding-left: 20px;">홈페이지</td>
	<td width="80%" style="padding-left: 10px;">
	 <input type="text" name="homepage" size="35" maxlength="20" class="boxTF" 	value="http://"/>
	</td>
</tr>

<tr>
	<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
</tr>

<tr>
	<td width="20%" headers="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	내&nbsp;&nbsp;&nbsp;&nbsp;용</td>
	<td width="80%" style="padding-left: 10px;">
		<textarea rows="7" cols="60" name="content" class="boxTA"></textarea>
	</td>
</tr>

<tr>
	<td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td>
</tr>
</table>

<table width="560" border="0" cellpadding="0" cellspacing="3" style="margin: auto;">
<tr align="center">
	<td height="40">
		<input type="button" value="등록하기" class="btn1" onclick="sendIt();">
		<input type="reset" value="다시입력" class="btn1" onclick="document.myForm.name.focus();"/>
	</td>
</tr>
</table>
</form>

<table width="560" border="0" cellpadding="0" cellspacing="0" style="margin: auto;">
<tr>
	<td height="3" bgcolor="#dbdbdb" align="center"></td>
</tr>
</table>

<%for(GuestDTO dto : lists){%>
<table width="560" border="0" cellpadding="0" cellspacing="0" bgcolor="#eeeeee" style="margin: auto;">
<tr height="20">
	<td width="50%" style="padding-left: 5px;">
	
		<%if(dto.getEmail() == null){ %>
			<b>No<%=dto.getNum() %>.<%=dto.getName() %></b>
		<%}else{ %>
			<b>No<%=dto.getNum() %>.<%=dto.getName() %>
			(<a href="mailto:<%=dto.getEmail()%>"><%=dto.getEmail() %></a>)</b>
		<%} %>
	</td>
	
	<td align="right" style="padding-left: 5px;">
	
		<%if(!dto.getHompage().equals("")){ %>
			<b>홈페이지 : </b><a href="<%=dto.getHompage() %>" target="_blank">
			<%=dto.getHompage() %></a>
		<%}else{
			out.print("&nbsp;");
		}%>
	</td>
</tr>

<tr height="20">
	<td width="80%" style="padding-left: 5px;">
	<b>작성일 : </b><%=dto.getCreated() %>, (<b>IP : </b><%=dto.getIpAddr() %>)</td>
	<td align="right" style="padding-right: 5px;">
	<a href="javascript:isDelete('<%=dto.getNum()%>');">삭제</a>
	</td>
</tr>

<tr>
	<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
</tr>

<tr>
	<td colspan="2" height="40" bgcolor="#ffffff" valign="top" style="padding: 5px;">
	<%=dto.getContent().replaceAll("\r\n", "<br/>") %>
	</td>
</tr>
<tr>
	<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
</tr>

</table>

<%}%>

<%if(dataCount == 0){ %>
<table width="560" border="0" cellpadding="0" cellspacing="0" bgcolor="#eeeeee" style="margin: auto;">
<tr align="center" height="50">
	<td>
	<b>등록된 자료가 없습니다.</b>
	</td>
</tr>
</table>	
<%}else{ %>
<table width="560" border="0" cellpadding="0" cellspacing="0" bgcolor="#ffffff" style="margin: auto;">
<tr>
	<td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td>
</tr>

<tr>
	<td align="center" style="padding-bottom: 5px;"><%=pageIndexList %></td>
</tr>
</table>

<%} %>
</body>
</html>