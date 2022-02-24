package com.event;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

//서블릿의 라이프사이클 lifeCycle과 속성 이벤트
//1. HTTPSessionListener : Session이 생성, 종료 될 때 감지함
//2. ServletContextListener : 서버(톰켓)가 시작, 중지될 때 감지함

public class CountManager implements HttpSessionListener{

	private static CountManager countManager;
	private static int count;
	
	//생성자
	public CountManager() {
		
		//자기 자신 넣기
		countManager = this;
	}
	
	//동기화
	public static synchronized CountManager getInstance() throws Exception{
	
		if(countManager == null) {
			
			countManager = new CountManager();
		}
		return countManager;
	}
	
	public static int getCount() {
		
		return count;
	}
	
	@Override
	public void sessionCreated(HttpSessionEvent evt) {
		
		HttpSession session = evt.getSession();
		session.setMaxInactiveInterval(10*60);//10분
		
		count++;
		
		System.out.println(session.getId() + ": 세션 생성,");
		System.out.println("접속자 수 : " + count);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent evt) {
		
		HttpSession session = evt.getSession();
		
		//나갈 때는 시간 필요 없음
		count--;
		
		System.out.println(session.getId() + ": 세션 소멸,");
		System.out.println("접속자 수 : " + count);
		
	}
	
	
	

}
