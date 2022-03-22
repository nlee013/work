package com.anno;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//��ü �̸� �浹�� ��츦 ����ؼ� �̸��� �߰������� ���� ���ϻ�
//ȸ�翡�� ���� ���. 3�ڸ��� �ᵵ ����.
@Controller("anno.testControlloer")
public class TestController {

	//�ּҴ� ����� ����
	//������ ����?get
	@RequestMapping(value="/demo/write.action", method= {RequestMethod.GET})
	public String write() throws Exception{
		
		return "anno/create";
	}
	
	@RequestMapping(value="/demo/write.action", method= {RequestMethod.POST})
	public String write_ok(TestCommand command, HttpServletRequest request) {
		
		String message = "���̵�: " + command.getUserId();
		message += ", �̸�: " + command.getUserName();
		
		request.setAttribute("message", message);
		
		return "anno/result";
	}
	
	@RequestMapping(value="/demo/save.action",
					method= {RequestMethod.GET, RequestMethod.POST})
	public String save(TestCommand command, HttpServletRequest request) throws Exception{
		
		if(command == null || command.getMode() == null || command.getMode().equals("")) {
			
			return "anno/save";
		}
		
		String message = "�̸�: " + command.getUserName();
		message += ", ���̵�: " + command.getUserId();
		
		request.setAttribute("message", message);
		
		return "anno/result";
	}
	
	//TestCommand command�� ��ä�� �޾Ƶ� ������,
	//�ϳ��ϳ� �޴´ٸ�(�� ������)
	@RequestMapping(value="/demo/insert.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String insert(String userId, String userName, String mode, HttpServletRequest request) throws Exception{

		if(mode == null || mode.equals("")) {
	
			return "anno/insert";
		}

		String message = "�̸�: " + userName;
		message += ", ���̵�: " + userId;

		request.setAttribute("message", message);

		return "anno/result";
}
}
