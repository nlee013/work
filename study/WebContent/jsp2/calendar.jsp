<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<% 
	request.setCharacterEncoding("UTF-8");

	//캘린더 객체 생성
	Calendar cal = Calendar.getInstance();
	
	//오늘날짜
	int nowYear = cal.get(Calendar.YEAR);//2022
	int nowMonth = cal.get(Calendar.MONTH) + 1;//2
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);//10

	//client가 넘겨준 data//최조 요청시 null.
	String strYear = request.getParameter("year");
	String strMonth = request.getParameter("month");
	
	/* int year = nowYear;//2022
	int month = nowMonth;//2 */
	
	//페이지 요청시 현재 날짜 보이게 하기
	int selectYear = nowYear;
	int selectMonth = nowMonth;
		
	if(strYear != null){
		
		year = Integer.parseInt(strYear);
	}
	
	if(strMonth != null){
	
		month = Integer.parseInt(strMonth);
	}
	
	//year가 2022년이고 month가 2월라고 예시를 들면
	
	int preYear = year;//초기값 year
	int preMonth = month - 1;
	
	int nextYear = year;
	int nextMonth = month + 1;
	
	if(preMonth < 1){
		
		preYear = year - 1;
		preMonth = 12;
	}
	
	if(nextMonth > 12){
		
		nextYear = year +1;
		nextMonth = 1;
	}
	
	cal.set(year, month - 1, 1);
	
	int startDay = 1;
	int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	int week = cal.get(Calendar.DAY_OF_WEEK);
	
	//selection box option
	String yOptions = "";
	
	//selection option구성
	for(int year = (selectYear - 10); year <= (selectYear + 10); year++){
		//페이지 요청시 현재 연도와 선택한 연도가 같을 때 
		
		if(strYear == null && year == nowYear){
			yOptions += "<option value =' " + year + "' selected = 'selected'>" + year + "</option>";
		
		}else if(strYear != null && Integer.parseInt(strYear) == year){
			yOptions += "<option value ='" + year + "'selected = 'selected'" + year + "</option>";
		
		}else{
			yOptions += "<option value ='" + year + "'>" + year + "</option>";
		}
		
	}
	
	String mOptions = "";
	
	//selection option구성
	for(int month = 1; month <= 12; month++){
		//페이지 요청시 현재 연도와 선택한 연도가 같을 때 
		
		if(strMonth == null && month == nowMonth){
			mOptions += "<option value =' " + month + "' selected = 'selected'>" + month + "</option>";
		
		}else if(strMonth != null && Integer.parseInt(strMonth) == month){
			mOptions += "<option value ='" + month + "'selected = 'selected'" + month + "</option>";
		
		}else{
			mOptions += "<option value ='" + month + "'>" + month + "</option>";
		}
		
	}
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>달력</title>
<script type="text/javascript">

	/* function submit(obj) {//obj = form 객체
		
		obj.submit();
	} */
	
	function ySelect(){
		
		for(i=0;i<12;i++){
			f.selectYear[i] = new yOptions(i+1,i+1);
		}	
		
		f.selectYear[<%=selectYear%>-1].selected = true;
		
	}
	
	function mSelect(){
		
		for(i = 0;i < 12;i++){
			f.selectMonth[i] = new mOptions(i+1,i);
		}	
		
		f.selectMonth[<%=selectMonth%>-1].selected = true;
		
	}
	function mChange() {
		var f = document.myForm;
		
		f.submit();
	}
	
	/* var cmbyear = document.getElementById("cmbyear");
	var cmbmonth = document.getElementById("cmbmonth");
	  
	  for (var i = 1970; i <= 2050; i++) {
	      cmbyear.options[i - 1970] = new Option(i + "년", i);
	  }

	  for (var i = 0; i < 12; i++) {
	      cmbmonth.options[i] = new Option(i + 1 + "월", i);

	   cmbyear.options[now_year - 1970].selected = "seleted"
	   cmbmonth.options[now_month].selected = "seleted"
	   
	function getLastDay(year, month) {
	
		var lastDay = new Date(year, month + 1);
		 lastDay.setDate(0);
		  return lastDay.getDate();
	}
	   
	   function m_change() {
		   cmbday.options.length = 0;
		   var year = parseInt(cmbyear.options[cmbyear.selectedIndex].value);
		   var month = parseInt(cmbmonth.options[cmbmonth.selectedIndex].value);
		   //날짜간 덧셈, 뺄샘 과정이 일어날 수 있음으로 number로 형변환
		   var lastDay = getLastDay(year, month);
		   for (var i = 0; i <= lastDay - 1; i++) {
		       cmbday.options[i] = new Option(i + 1 + "일", i + 1);
		   }
		   
		 }
	   
	   function getStartDay(year, month) {
		   var date = new Date(year, month);
		   return date.getDay();
		 } */
</script>

<style type="text/css">

body{
	
	font-size: 12pt;
}

/* table */

td{

	font-size: 12pt;
}

</style>

</head>
<body onload="mSelect();">
<br/><br/>

<table align="center" width="210" cellpadding="2" cellspacing="1">
<tr>
	<td align="center">	
	
	<a href="calendar.jsp?year=<%=nowYear%>&month=<%=nowMonth%>">
	<img src="./image/today.png" align="left" width="40">
	</a>
	
	<!-- Left Button Location -->
		<a href="calendar.jsp?year=<%=preYear %>&month=<%=preMonth %>">◀</a>
		&nbsp; 
		
	<!-- 연도버튼 -->
	<form action="" method="post" name="myForm">
		<select name="year" onchange="ySelect">
			<%=yOptions %>
		</select>년
		<select name="month" onchange="mSelect()">
			<%=mOptions %>
		</select>월
	</form>
	
	<!-- Right Button Location -->
		<a href="calendar.jsp?year=<%=nextYear %>&month=<%=nextMonth %>">▶</a>
	 
	 </td>

	 <%-- <td>
	 선택된 날짜 : <%=strYear %>년<%=strMonth %>월
	 </td> --%>
</tr>


</table>

<table align="center" width="210" cellpadding="0" cellspacing="1" bgcolor="#cccccc">
<tr> 
	<td bgcolor="e6e4e6" align="center">일</td>
	<td bgcolor="e6e4e6" align="center">월</td>
	<td bgcolor="e6e4e6" align="center">화</td>
	<td bgcolor="e6e4e6" align="center">수</td>
	<td bgcolor="e6e4e6" align="center">목</td>
	<td bgcolor="e6e4e6" align="center">금</td>
	<td bgcolor="e6e4e6" align="center">토</td>
</tr>

<%
/* jsp로 만들기 + 달력의 빈 공간 만들기 */
	int newLine = 0;

	out.print("<tr height = '20'>");
	
	for(int i = 1; i < week; i++){
		
		out.print("<td bgcolor = '#ffffff'>&nbsp;</td>");
		
		newLine++;
	}

	for(int i=startDay;i<=endDay;i++){
		
		String fontColor = (newLine==0)?"red":(newLine==6)?"blue":"black";
		String bgColor = (nowYear==year)&&
				(nowMonth==month)&&(nowDay==i)?"#e5e4e6":"#ffffff";
		
		out.print("<td align='center' bgcolor='" + bgColor +
				"'><font color='" + fontColor + "'>" + i + "</font></td>");
		//<td align='center' bgcolor='#ffffff'><font color='black'>10</font></td>
		
		newLine++;
		
		if(newLine==7 && i!=endDay){
			out.print("</tr><tr height='20'>");
			
			newLine=0;
		}
	}

	while(newLine>0 && newLine<7){
		out.print("<td bgcolor='#ffffff'>&nbsp;</td>");
		newLine++;
	}

	out.print("</tr>");

%>

</table>


</body>
</html>