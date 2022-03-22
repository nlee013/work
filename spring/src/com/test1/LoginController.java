package com.test1;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

public class LoginController extends SimpleFormController{

	//authenticator�� ���⿡ �Ѱ���߉�
	private Authenticator authenticator;
	
	//dispatcher�� setter�־�߉�
	public void setAuthenticator(Authenticator authenticator) {
		this.authenticator = authenticator;
	}

	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command,
			BindException errors) throws Exception {
		
		LoginCommand login = (LoginCommand)command;
		
		try {
			
			authenticator.authen(login.getUserId(), login.getUserPwd());
			
			String message = "id: " + login.getUserId();
			message += ", pwd: " + login.getUserPwd();
			message += ", type: " + login.getLoginType();
			
			request.setAttribute("message", message);
			
			return new ModelAndView("test1/login_ok");
			
		} catch (UserException e) {
			
			return showForm(request, response, errors);//�Է�â�� �ٽ� ���
		}
		
	}
	
	@Override
	protected Map<String, List<String>> referenceData(HttpServletRequest request)
			throws Exception {
		
		List<String> loginTypes = new ArrayList<>();
		
		loginTypes.add("�Ϲ�ȸ��");
		loginTypes.add("���ȸ��");
		loginTypes.add("Ư��ȸ��");
		
		Map<String, List<String>> map = new HashMap<String, List<String>>();
		//login.jsp�� loginType���� �ѱ�
		map.put("loginType", loginTypes);
		
		return map;
	}
	
	
	
}
