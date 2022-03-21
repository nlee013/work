package com.di.test;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class ResultMain {

	public static void main(String[] args) {
		
		//xml ������ ��üȭ �ϱ�
		//��ΰ� ��
		String path = "com/di/test/applicationContext.xml";
		//���ڿ��� path �� �ִ°�(text)
		
		//springframework core
		//���� �ֱ�
		Resource res = new ClassPathResource(path);
		
		//��üȭ
		BeanFactory factory = new XmlBeanFactory(res);
		
		//�޸� �Ҵ�� ��ü �ҷ�����
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
