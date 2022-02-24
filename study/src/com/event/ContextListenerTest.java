package com.event;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListenerTest implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent evt) {
		
		System.out.println("서버 종료된다잉...");
		
	}

	@Override
	public void contextInitialized(ServletContextEvent evt) {
		
		System.out.println("서버 시작한다잉...");
		
		ServletContext sc = evt.getServletContext();
		
		sc.setAttribute("name", "유인나");
	}
	//el로 study 서버 안에서 어디서든지 접근가능하게 된다.

}
