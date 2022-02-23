<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String root = pageContext.getServletContext().getRealPath("/"); // context: 글로벌
	
	//String path = root + File.separator + "pds" + File.separator + "saveData";
	String path = root + "pds" + File.separator + "saveData";
	
	//String path = "d:\pds\saveData"; //이런식으로 써도 된다
	
	File f = new File(path);
	
	if(!f.exists()){
		
		f.mkdirs();
	}
	
	String encType = "UTF-8";
	int maxFileSize = 10*1024*1024; //10메가
	
	try{
		
		// 파일 업로드
		MultipartRequest mr = new MultipartRequest(request, path, maxFileSize, encType,
				new DefaultFileRenamePolicy());
		
		//DB에 저장하기 위해 파일 정보 추출
		out.print("제목: " + mr.getParameter("subject") + "<br/>");
		out.print("서버에 저장된 파일 이름: " + mr.getFilesystemName("upload") + "<br/>");
		out.print("업로드한 파일명: " + mr.getOriginalFileName("upload") + "<br/>");
		out.print("파일 타입: " + mr.getOriginalFileName("upload") + "<br/>");
		
		File file = mr.getFile("upload");
		out.print("파일 크기: " + file.length() + "<br/>");
		
		
	}catch(Exception e){
		
	}
		
		
		

	
	
	
	
%>
