package com.test2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.validation.Errors;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractWizardFormController;

//AbstractWizardFormController: page 따로 지정
public class MemController extends AbstractWizardFormController{

	public MemController() {
		
		setCommandClass(MemCommand.class);
		setCommandName("info");
	}
	
	@Override
	protected void postProcessPage(HttpServletRequest request,
			Object command, Errors errors, int page)
			throws Exception {
		
		//각 page에서 submit한 경우
		MemCommand mem = (MemCommand)command;
		
		if(page == 0) {
			
			//mem = dto. 나중에 "123"자리에 db에서 가져온 data 쓰면 됌
			if(mem.getSsn().equals("123")) {
				
				String str = mem.getName() + "님, 이미 가입 되었습니다.";
				
				//다음 page로 못넘어감
				errors.rejectValue("message", str);//error code 저장
				
				mem.setMessage(str);
			}
			
		}else if(page == 1) {
			
			
		}
		
	}

	@Override
	protected ModelAndView processCancel(HttpServletRequest request,
			HttpServletResponse response, Object command,
			BindException errors) throws Exception {
		
		//회원가입 취소한 경우
		return new ModelAndView("test2/mem_cancel", errors.getModel());
		
	}

	@Override
	protected ModelAndView processFinish(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2,
			BindException arg3) throws Exception {
		
		//data 입력이 정상적일 경우 여기로 넘어옴
		
		//회원가입 처리 코드 작업
		
		return new ModelAndView("test2/mem_ok");
	}

	@Override
	protected Map referenceData(HttpServletRequest request,
			Object command, Errors errors, int page) throws Exception {
		
		if(page == 1) {
			
			List<String> types = new ArrayList<>();
			types.add("일반회원");
			types.add("기업회원");
			types.add("특별회원");
			
			Map<String, List<String>> map = new HashMap<String, List<String>>();
			map.put("types", types);
			
			return map;
		}
		//page 2, 3은 사용하지 않으므로 지금은 null로 반환값을 주었음
		
		return null;
	}

}
