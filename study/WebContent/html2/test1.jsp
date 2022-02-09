<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	//변수
	var str;
	str = "변수 선언 후 값 대입";
	
	document.write(str + "<br/>");
	
	document.write("-------------------<br/>")
	
	str = "문자열";
	document.write(str + ":" + typeof(str) + "<br/>");
	str = 123;
	document.write(str + ":" + typeof(str) + "<br/>");
	str = true;
	document.write(str + ":" + typeof(str) + "<br/>");
	
	document.write("-------------------<br/>")
	
	
	var hello = "hello 전역변수1";
	
	function thisFunc() {
		
		var hello = "hello 지역변수2"
		global = "global 전역변수" //함수안에 var 안쓰면 전역변수
		var local = "local 지역변수"
		
		document.write(hello + "<br/>");
		document.write(global + "<br/>");
		document.write(local + "<br/>");
		document.write("<br/><br/>");
			
	}
	
	thisFunc();
	document.write(hello + "<br/>");
	document.write(global + "<br/>");
	//document.write(local + "<br/>");//에러라인 밑으로 실행 노
	document.write("<br/><br/>");
 
	
	document.write("-------------------<br/>")
	
	var num1=10,num2=3;
	document.write("num1+num2=" + (num1+num2) + "<br/>");
	document.write("num1-num2=" + (num1-num2) + "<br/>");
	document.write("num1*num2=" + (num1*num2) + "<br/>");
	document.write("num1/num2=" + (num1/num2) + "<br/>");
	document.write("num1%num2=" + (num1%num2) + "<br/>");
	
	document.write("-------------------<br/>")
	
	document.write("num1>num2=" + (num1>num2) + "<br/>");
	document.write("num1&lt;<num2=" + (num1<num2) + "<br/>");
	document.write("num1==num2=" + (num1==num2) + "<br/>");
	document.write("num1!=num2=" + (num1!=num2) + "<br/>");
	
	document.write("-------------------<br/>");
	
	var ans;
	ans = -10;
	
	if(ans > 0){
		document.write(ans + "양수입니다.");
	}else if(ans < 0){
		document.write(ans + "음수입니다.");
	}else{
		document.write(ans + "0 입니다.");
	}
	
	document.write("<br/>-------------------<br/>");
	
	for(var i = 1; i <= 10; i++){
		document.write(i + "<br/>");
	}
	
	var j = 1;
	
	while(j <= 10){
		document.write(j + "\t");
		j++;
	}
	
</script>

</head>
<body>

</body>
</html>