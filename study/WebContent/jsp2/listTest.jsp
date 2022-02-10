<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서버 넣는 프로그램</title>

<style>
	
body{
	
	font-size: 10pt;
}

.itemBtn{
	
	font-size: 10pt;
	color: rgb(0, 0, 0);
	background-color: rgb(240, 240, 240);
	width: 30pt;
}

.btn{
	
	font-size: 10pt;
	color: rgb(0, 0, 0);
	background-color: rgb(240, 240, 240);
}

.itemList{
	
	font-size: 10pt;
	width: 100pt;
}	
	
	
</style>

<script type="text/javascript">

	function itemAdd(){
		
		var f = document.myForm;
		var leftItem = f.leftItem;
		
		//자동으로 index 번호 생성
		f.leftItem[0] = new Option('배수지', '배수지');//class
		f.leftItem[1] = new Option('유인나', '유인나');
		f.leftItem[2] = new Option('한지민', '한지민');
		f.leftItem[3] = new Option('전지현', '전지현');
		f.leftItem[4] = new Option('한효주', '한효주');
		f.leftItem[5] = new Option('한지혜', '한지혜');
		f.leftItem[6] = new Option('이나영', '이나영');
	}
	
	function itemMove(val) {
	
		
		var f = document.myForm;
		var source, target;
		
		if(val == "left"){
			
			source = f.rightItem;
			target = f.leftItem;
			
		}else{
			
			source = f.leftItem;
			target = f.rightItem;
		}
		
		var n, i;
		n = target.length;
		
		for(i = source.length - 1; i >= 0; i--){
			
			if(source.options[i].selected){
				
				target[n++] =
				
					new Option(source.options[i].text, source.options[i].value);//객체 생성
				
				source[i] = null;//데이터 초기화 -> 데이터 삭제
				
			}
			
		}
	}

	//
</script>

</head>
<body onload="itemAdd();">
<br/><br/>

<form action="listTest_ok.jsp" method="post" name="myForm">

<table border="0" style="font-size: 10pt;">

<tr align="center">
	<td width="150">전체 리스트</td>
	<td width="70">&nbsp;</td>
	<td width="150">받는 사람</td>
</tr>

<tr align="center">
	<td width="150">
	<select name="leftItem" multiple="multiple" size="7" class = "itemList">
		<!-- <option value="배수지">배수지</option> -->
	</select>
	</td>
	
	<td width="70">
		<input type="button" class="itemBtn" value="&gt;" onclick="itemMove('right');"/><br/>
		<input type="button" class="itemBtn" value="&lt;" onclick="itemMove('left');"/><br/>	
	</td>
	
	<td width="150">
	<select name="rightItem" multiple="multiple" size="7" class = "itemList">
			
	</select>
	</td>	
</tr>

<tr>
	<td align="center" colspan="3">
	<br/>메세지<br/>
	<textarea rows="5" cols="42" name="msg"></textarea>	
	</td>
</tr>

<tr>
	<td colspan="3" align="center">
		<input type="button" value="쪽지보내기" /><br/>
	</td>
</tr>	



</table>

</form>


</body>
</html>