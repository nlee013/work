<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

	#result{
		/* #은 아이디로 받는다 */
		
		border: 3px dotted #eddcf5;
	
	}
	
	div{
	
		margin: auto;
		width: 600;
		height: 100%
	}
	
</style>

<script type="text/javascript">

	function useJson() {
		
		//항상 []대괄호로 묶어주고 {}중괄호로 구분한다
		var userArray = [
						
			{
				userId:"suzi",
				name:"배수지",
				age:27,
				phone:[
					
					{home:["02-111-111", "031-222-222"]},
					{office:["02-333-333", "031-777-777"]}
				]
				
			},//배열[0]
			
			{
				userId:"inna",
				name:"유인나",
				age:40,
				phone:[{},{}]
			},//배열[1]
			
			{
				userId:"insun",
				name:"정인선",
				age:45,
				phone:[{},{}]
				
			}//배열[2]
			
			
		];
		
		//한개의 data 읽어오기
		var id = userArray[0].userId;
		var name = userArray[0].name;
		var age = userArray[0].age;
		
		var homePhone1 = userArray[0].phone[0].home[0];
		var homePhone2 = userArray[0].phone[0].home[1];
		
		var officePhone1 = userArray[0].phone[1].office[0];
		var officePhone2 = userArray[0].phone[1].office[1];
		
		var printData = id + ", " + name + ", " + age + "<br/>";
		
		printData += homePhone1 + "<br/>";
		printData += homePhone2 + "<br/>";
		printData += officePhone1 + "<br/>";
		printData += officePhone2 + "<br/>---------------<br/>";
		
		//전체 data 읽어오기
		for(var i = 0; i < userArray.length; i++){
			
			var userId = userArray[i].userId;
			var userName = userArray[i].name;
			var userAge = userArray[i].age;
			
			printData += userId + "," + userName + "," + userAge + "<br/>";
		}
		var resultDiv = document.getElementById("result");
		resultDiv.innerHTML = printData;
		
	}
	
	window.onload = function() {
		
		useJson();
	}

</script>
</head>
<body>

<h1>JSON(Javascript Object Notation)</h1>
<hr/>
<div id="result"></div>

</body>
</html>