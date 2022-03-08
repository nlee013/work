package com.test;

import org.apache.struts.action.ActionForm;

//DTO 만들기
public class TestForm extends ActionForm{

	private static final long serialVersionUID = 1L;
	//actionform이 testForm을 관리함
	
	private String userId;
	private String userPwd;
	private String userName;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}
