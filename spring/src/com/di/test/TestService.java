package com.di.test;

//applicationContext.xml이 바로 direct로 가지 않기에
//완충장치로 중간 단계를 만들어놓은게 testService

public class TestService {

	//Dependency Injection DI(의존성 주입)
	private Test test;
	
	//객체를 생성(applicationContext의 bean(객체생성)
	//생성자에 넘겨서 매개변수로 Test test에 넘어옴
	//Test test = new TestImpl1();와 같은 구조
	
	//method를 가지고 초기화 할 때는 기본생성자를 만들어서 사용함
	public TestService() {//기본생성자
		
	}
	
	//오버로딩된 생성자?
	public TestService(Test test) {
		
		this.test = test;
	}
	
	
	//setter
	public void setTest(Test test) {
		
		this.test = test;
		
	}
	public String getValue() {
		
		return test.result();
	}
	
	
}
