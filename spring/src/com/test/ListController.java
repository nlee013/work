package com.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractCommandController;

//data를 처리해주는 애
public class ListController extends AbstractCommandController{

	public ListController() {
		
		setCommandClass(ListCommand.class);
		setCommandName("listCommand");//DTO안에 넘어온 data를 담아둠
		//ListCommand listCommand = new ListCommand();
	}
	
	@Override
	protected ModelAndView handle(HttpServletRequest request,
			//자동으로 command로 넘어온다(spring이 넘겨줌)
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {
		
		//받을 때 data 타입 Object
		ListCommand vo = (ListCommand)command;
		
		String message = "이름: " + vo.getUserName();
		message += ", 아이디: " + vo.getUserId();
		
		request.setAttribute("message", message);
		
		return new ModelAndView("test/write_ok");
	}

}
