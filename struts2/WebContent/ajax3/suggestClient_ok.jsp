<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collections"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<%!
	String[] keywords = {
			
			"ajax", "Ajax", "Ajax 실전 프로그래밍", "AJA", "자수",
			"자전거", "자라", "자바 프로그래밍", "자바 서버 페이지", "자바 스터디",
			"astra", "abort", "자바 서비스", "자바캔", "ABC마트", "Apple"
	};

	public List<String> search(String userKeyword){
		
		//검증
		if(userKeyword == null || userKeyword.equals("")){
			
			return null;//class의 초기값은 null
			
			//collection에 list가 비어있다. 위 코드와 같음
			//return Collections.EMPTY_LIST;
		
		}
		
		//소문자를 무조건 대문자로 만들 때
		//userKeyword = userKeyword.toUpperCase();
		
		List<String> lists = new ArrayList<String>();
		
		for(int i = 0; i < keywords.length; i++){
			
			if(keywords[i].startsWith(userKeyword)){
				
				lists.add(keywords[i]);
			}
		}
		
		return lists;
		
	}
%>

<%

	String userKeyword = request.getParameter("userKeyword");

	List<String> keywordList = search(userKeyword);
	
	out.print(keywordList.size());
	
	out.print("|");
	
	Iterator<String> it = keywordList.iterator();
	
	while(it.hasNext()){
		
		String value = (String) it.next();
		
		out.print(value);
		
		//배열 뒤에 ,(쉼표) 지워주기
		if((keywordList.size() - 1) > 0){
			
			out.print(",");
		}
	}
	

%>