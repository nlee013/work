package com.anno;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//�Ʒ� @Controller�� �˾Ƽ� ��ӹް� ��ü����

//dispatcher�� �Ⱦ��� ������ Controller ���� ��

@Controller("main.mainController")
@RequestMapping(value="/main.action")
//�̸� �ƹ��ų� �ᵵ ��.
//spring annotation�� ��� ȣ������ �ʱ� ������

public class MainController {

	//MainController mainController = new MainController();
	//MainController main.mainController = new MainController();
	
	@RequestMapping(method=RequestMethod.GET)
	public String method() {
		
		return "/main";
	}
	
}
