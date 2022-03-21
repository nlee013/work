package com.di.test;

//applicationContext.xml�� �ٷ� direct�� ���� �ʱ⿡
//������ġ�� �߰� �ܰ踦 ���������� testService

public class TestService {

	//Dependency Injection DI(������ ����)
	private Test test;
	
	//��ü�� ����(applicationContext�� bean(��ü����)
	//�����ڿ� �Ѱܼ� �Ű������� Test test�� �Ѿ��
	//Test test = new TestImpl1();�� ���� ����
	
	//method�� ������ �ʱ�ȭ �� ���� �⺻�����ڸ� ���� �����
	public TestService() {//�⺻������
		
	}
	
	//�����ε��� ������?
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
