<%@ page contentType="text/html; charset=UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 업로드(Spring 2.5)</title>
</head>
<body>

<div id="bbsList">

	<div id="bbsList_title">
		파일 업로드(Spring 2.5)
	</div>
	<div id="bbsList_header">
		<div id="rightHeader">
			<input type="button" value=" 파일 올리기 " class="btn2" 
			onclick="javascript:location.href='<%=cp%>/fileTest/created.action';"/>			
		</div>	
	</div>
	<div id="bbsList_list">
		<div id="title">
			<dl>
				<dt class="num">번호</dt>
				<dt class="subject">제목</dt>
				<dt class="originalFileName">파일</dt>
				<dt class="deleted">삭제</dt>
			</dl>
		</div>
		<div id="lists">
		<c:forEach var="dto" items="${lists }">
			<dl>
				<dd class="num">${dto.listNum }</dd>
				<dd class="subject">${dto.subject }</dd>
				<dd class="originalFileName">${dto.originalFileName }</dd>
				<dd class="fileDownload">
					<a href="<%=cp%>/fileTest/download.action?num=${dto.num}">
					[다운로드]
					</a>
				</dd>
				<dd class="deleted">
					<a href="<%=cp%>/fileTest/deleted.action?num=${dto.num}&pageNum=${pageNum}">
					[삭제]
					</a>
				</dd>
			</dl>
		</c:forEach>
		</div>
		<div id="footer">
			<p>
				<c:if test="${totalDataCount!=0 }">
					${pageIndexList }
				</c:if>
				<c:if test="${totalDataCount==0 }">
					등록된 게시물이 없습니다.
				</c:if>
			</p>
		</div>
		
	</div>
	
</div>
</body>
</html>