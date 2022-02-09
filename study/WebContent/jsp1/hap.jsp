<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- name은 script에서 form을 호출하는데 호출 필요 없을시 여기서 작성 안해도 됌 -->
<form action="hap_ok.jsp" method="post">
<!--  404는 파일 없음.500은 compile error 오타 오류 -->

수1: <input type="text" name="su1"/><br/>
수2: <input type="text" name="su2"/><br/>
이름: <input type="text" name="name"/><br/>
<input type="submit" value="결과"/><br/>
</form>

<a href="hap_ok.jsp?su1=100&su2=200&name=수지">Get방식</a>
<!-- script를 쓸 때는  button, 사용 안할 때 submit -->
</body>
</html>