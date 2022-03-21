package com.di.test;

public class TestImpl1 implements Test{

	private int su1;
	private int su2;
	
	//기본생성자
	public TestImpl1() {
		
		su1 = 10;//위에 있는 su1을 말하기에 this 생략가능
		su2 = 20;
		
	}
	
	public TestImpl1(int su1, int su2) {
	
		this.su1 = su1;//여기선 누가누군지 몰라 생략불가
		this.su2 = su2;
		
	}
	
	@Override
	public String result() {
		
		String str = String.format("%d+%d=%d", su1, su2, su1+su2);
		return str;
		
	}
	
	
}
