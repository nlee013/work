package com.test;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class TestController extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		int hour = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);
		String msg = "";
		
		if(hour >= 6 && hour <= 8) {
			msg = "��ħ�ӵ�";
			
		}else if(hour >= 8 && hour <=13) {
			msg = "�����̴�?";
			
		}else if(hour >= 13 && hour <=14) {
			msg = "���ɽð� �ӵ�";
			
		}else if(hour >= 14 && hour <=18) {
			msg = "���� �ӵ�";
			
		}else {
			msg = "���� �ӵ�";
		}
		
		request.setAttribute("msg", msg);
		
		return new ModelAndView("test/view");
		//dispatcher-servlet�� �̸� ����� /�� .jsp���� �Ƚᵵ ��
	}

	
}
