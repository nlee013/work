package com.test;

import com.opensymphony.xwork2.ActionSupport;

//dto(form) + action ���� ��� ����ϴ� ���

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
	
	//�⺻�� �Ű����� ����
	public String execute() throws Exception {
		
		message = userName + "�� �ݰ���...";
		
		//���� �ִ� �۾��� �� �Ǹ� success ����ϰ� �ϴ� �뵵
		//���=������ �ʴ� ��. ���� �빮������ �ȿ� �ҹ��ڷ� success �������
		return SUCCESS;
	}
}
