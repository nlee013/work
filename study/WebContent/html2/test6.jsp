<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function fimg(csrc){
		
		window.document.images["img1"].src = csrc;
	}
	
</script>

</head>
<body>
<center>
<img src="../html1/image/13798939b.jpg" width="300" height="300" name="img1"/><br/>

<img src="../html1/image/13798939b.jpg" width="80" height="80" 
onmouseover="fimg('../html1/image/13798939b.jpg')"/>
<img src="../html1/image/13798939c.jpg" width="80" height="80" 
onmouseover="fimg('../html1/image/13798939c.jpg')"/>
<img src="../html1/image/13798939e.jpg" width="80" height="80"
onmouseover="fimg('../html1/image/13798939e.jpg')"/>
<img src="../html1/image/13798939f.jpg" width="80" height="80" 
onmouseover="fimg(this.src)"/>
</center>

</body>
</html>