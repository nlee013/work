package com.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractCommandController;

//data�� ó�����ִ� ��
public class ListController extends AbstractCommandController{

	public ListController() {
		
		setCommandClass(ListCommand.class);
		setCommandName("listCommand");//DTO�ȿ� �Ѿ�� data�� ��Ƶ�
		//ListCommand listCommand = new ListCommand();
	}
	
	@Override
	protected ModelAndView handle(HttpServletRequest request,
			//�ڵ����� command�� �Ѿ�´�(spring�� �Ѱ���)
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {
		
		//���� �� data Ÿ�� Object
		ListCommand vo = (ListCommand)command;
		
		String message = "�̸�: " + vo.getUserName();
		message += ", ���̵�: " + vo.getUserId();
		
		request.setAttribute("message", message);
		
		return new ModelAndView("test/write_ok");
	}

}
