package com.anno;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//아래 @Controller는 알아서 상속받고 객체생성

//dispatcher에 안쓰고 각각의 Controller 위에 씀

@Controller("main.mainController")
@RequestMapping(value="/main.action")
//이름 아무거나 써도 됌.
//spring annotation은 어디에 호출하지 않기 때문에

public class MainController {

	//MainController mainController = new MainController();
	//MainController main.mainController = new MainController();
	
	@RequestMapping(method=RequestMethod.GET)
	public String method() {
		
		return "/main";
	}
	
}
