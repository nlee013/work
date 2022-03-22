package com.anno;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//객체 이름 충돌날 경우를 대비해서 이름을 추가적으로 쓰는 것일뿐
//회사에서 많이 사용. 3자리로 써도 무관.
@Controller("anno.testControlloer")
public class TestController {

	//주소는 사용자 정의
	//무조건 실행?get
	@RequestMapping(value="/demo/write.action", method= {RequestMethod.GET})
	public String write() throws Exception{
		
		return "anno/create";
	}
	
	@RequestMapping(value="/demo/write.action", method= {RequestMethod.POST})
	public String write_ok(TestCommand command, HttpServletRequest request) {
		
		String message = "아이디: " + command.getUserId();
		message += ", 이름: " + command.getUserName();
		
		request.setAttribute("message", message);
		
		return "anno/result";
	}
	
	@RequestMapping(value="/demo/save.action",
					method= {RequestMethod.GET, RequestMethod.POST})
	public String save(TestCommand command, HttpServletRequest request) throws Exception{
		
		if(command == null || command.getMode() == null || command.getMode().equals("")) {
			
			return "anno/save";
		}
		
		String message = "이름: " + command.getUserName();
		message += ", 아이디: " + command.getUserId();
		
		request.setAttribute("message", message);
		
		return "anno/result";
	}
	
	//TestCommand command를 통채로 받아도 되지만,
	//하나하나 받는다면(잘 사용안함)
	@RequestMapping(value="/demo/insert.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String insert(String userId, String userName, String mode, HttpServletRequest request) throws Exception{

		if(mode == null || mode.equals("")) {
	
			return "anno/insert";
		}

		String message = "이름: " + userName;
		message += ", 아이디: " + userId;

		request.setAttribute("message", message);

		return "anno/result";
}
}
