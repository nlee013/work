package com.test1;
//�׳� direct�� Exception �� �� �ִµ� ȸ�翡���� ���ϱ� ������ ���

public interface Authenticator {

	public void authen(String userId, String userPwd) throws UserException;
}
