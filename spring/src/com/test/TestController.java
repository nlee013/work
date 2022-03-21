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
			msg = "¾ÆÄ§ÀÓµÂ";
			
		}else if(hour >= 8 && hour <=13) {
			msg = "Áö°¢ÀÌ´Ù?";
			
		}else if(hour >= 13 && hour <=14) {
			msg = "Á¡½É½Ã°£ ÀÓµÂ";
			
		}else if(hour >= 14 && hour <=18) {
			msg = "¿ÀÈÄ ÀÓµÂ";
			
		}else {
			msg = "Àú³á ÀÓµÂ";
		}
		
		request.setAttribute("msg", msg);
		
		return new ModelAndView("test/view");
		//dispatcher-servlet¿¡ ¹Ì¸® ½á³ö¼­ /¶û .jspµû·Î ¾È½áµµ ‰Î
	}

	
}
