package com.test1;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport{

	private static final long serialVersionUID = 1L;

	private UserDTO dto;
	private String message;
	
	public UserDTO getDto() {
		return dto;
	}
	public void setDto(UserDTO dto) {
		this.dto = dto;
	}
	//setter 필요없음-> 왜?
	public String getMessage() {
		return message;
	}
	
	public String execute() throws Exception{
		
		message = dto.getUserName() + "님 반갑소!";
		
		return "ok";//사용자 정의 문자
		//SUCCESS 써도 되고 사용자 정의 문자 사용도 가능
		
	}
}
