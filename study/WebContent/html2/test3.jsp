<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function testFunc(color){
	document.bgColor = color;//매개변수로 받을 예정
}

</script>
</head>
<body>

<!-- 큰 따옴표를 사용할 때 또 쓸수 없음. 짝으로 생각하므로. 작은 따옴표 사용한다
 -->

<input type="radio" name="r1" value="#fff" 
checked="checked" onclick="testFunc('white')"/>white<br/>
<input type="radio" name="r1" value="red" onclick="testFunc('red')"/>red<br/>
<input type="radio" name="r1" value="blue" onclick="testFunc('blue')"/>blue<br/>
<input type="radio" name="r1" value="yello" onclick="testFunc('yello')"/>yellow<br/>
<input type="radio" name="r1" value="#EDC8F9" onclick="testFunc('lavendar')"/>lavendar<br/>

</body>
</html>