package com.test;

import com.opensymphony.xwork2.ActionSupport;

//dto(form) + action 같이 묶어서 사용하는 경우

public class TestAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private String userId;
	private String userName;
	private String message;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	//기본이 매개변수 없음
	public String execute() throws Exception {
		
		message = userName + "님 반갑소...";
		
		//여기 있는 작업이 잘 되면 success 사용하게 하는 용도
		//상수=변하지 않는 수. 겉은 대문자지만 안에 소문자로 success 들어있음
		return SUCCESS;
	}
}
