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
	//setter �ʿ����-> ��?
	public String getMessage() {
		return message;
	}
	
	public String execute() throws Exception{
		
		message = dto.getUserName() + "�� �ݰ���!";
		
		return "ok";//����� ���� ����
		//SUCCESS �ᵵ �ǰ� ����� ���� ���� ��뵵 ����
		
	}
}
