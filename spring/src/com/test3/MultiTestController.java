package com.test3;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

//여러개를 한 곳에 연결해서 사용할 때
public class MultiTestController extends MultiActionController{

	public ModelAndView list(HttpServletRequest request, HttpServletResponse response)
		throws Exception{
		
		request.setAttribute("message", "list 페이지");
		
		return new ModelAndView("test3/testList");
		
	}
	
	public ModelAndView view(HttpServletRequest request, HttpServletResponse response)
			throws Exception{
			
			request.setAttribute("message", "view Page");
			
			return new ModelAndView("test3/testView");
			
		}
}
