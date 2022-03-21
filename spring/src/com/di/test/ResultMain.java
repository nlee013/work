package com.di.test;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class ResultMain {

	public static void main(String[] args) {
		
		//xml 파일을 객체화 하기
		//경로가 들어감
		String path = "com/di/test/applicationContext.xml";
		//문자열을 path 에 넣는것(text)
		
		//springframework core
		//내용 넣기
		Resource res = new ClassPathResource(path);
		
		//객체화
		BeanFactory factory = new XmlBeanFactory(res);
		
		//메모리 할당된 객체 불러오기
		TestService ob = (TestService)factory.getBean("testService");
		System.out.println(ob.getValue());
		
		
		//--------------------------------------
		/*
		TestImpl1 ob1 = new TestImpl1();
		System.out.println(ob1.result());

		TestImpl2 ob2 = new TestImpl2();
		System.out.println(ob2.result());
		*/
		
		//--------------------------------------
		/*
		Test ob;
		
		ob = new TestImpl1();
		System.out.println(ob.result());
		
		ob = new TestImpl2();
		System.out.println(ob.result());
		*/
		//--------------------------------------
		
		
	}

}
