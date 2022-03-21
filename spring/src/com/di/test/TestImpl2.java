package com.di.test;

public class TestImpl2 implements Test{

	private String name;
	private int age;
	
	//기본생성자
	public TestImpl2() {
		
		this.name = "배수지";
		this.age = 27;
		
	}
	
	public TestImpl2(String name, int age) {
		
		this.name = name;
		this.age = age;
		
	}
		
		
	@Override
	public String result() {
		
		String str = "이름: " + name + ", 나이: " + age; 
		return str;
	}
	
	
}
