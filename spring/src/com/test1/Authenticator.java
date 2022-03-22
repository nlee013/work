package com.test1;
//그냥 direct로 Exception 할 수 있는데 회사에서도 쓰니까 눈도장 찍기

public interface Authenticator {

	public void authen(String userId, String userPwd) throws UserException;
}
