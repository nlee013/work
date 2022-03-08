package com.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

//이번에 한번만 사용하고 앞으로 사용예정 없음. 얘보다 좋은 애 사용할 예정
public class TestAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		String uri = request.getRequestURI();
		
		if(uri.indexOf("/test_ok.do") != -1) {
			
			TestForm f = (TestForm)form;
			
			request.setAttribute("vo", f);//넘긴다
			
			return mapping.findForward("ok");//ok라는 문자를 가지고 돌아가라
					
		}
		
		return mapping.findForward("error");
		
	}

	
}
