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

//AbstractWizardFormController: page ���� ����
public class MemController extends AbstractWizardFormController{

	public MemController() {
		
		setCommandClass(MemCommand.class);
		setCommandName("info");
	}
	
	@Override
	protected void postProcessPage(HttpServletRequest request,
			Object command, Errors errors, int page)
			throws Exception {
		
		//�� page���� submit�� ���
		MemCommand mem = (MemCommand)command;
		
		if(page == 0) {
			
			//mem = dto. ���߿� "123"�ڸ��� db���� ������ data ���� ��
			if(mem.getSsn().equals("123")) {
				
				String str = mem.getName() + "��, �̹� ���� �Ǿ����ϴ�.";
				
				//���� page�� ���Ѿ
				errors.rejectValue("message", str);//error code ����
				
				mem.setMessage(str);
			}
			
		}else if(page == 1) {
			
			
		}
		
	}

	@Override
	protected ModelAndView processCancel(HttpServletRequest request,
			HttpServletResponse response, Object command,
			BindException errors) throws Exception {
		
		//ȸ������ ����� ���
		return new ModelAndView("test2/mem_cancel", errors.getModel());
		
	}

	@Override
	protected ModelAndView processFinish(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2,
			BindException arg3) throws Exception {
		
		//data �Է��� �������� ��� ����� �Ѿ��
		
		//ȸ������ ó�� �ڵ� �۾�
		
		return new ModelAndView("test2/mem_ok");
	}

	@Override
	protected Map referenceData(HttpServletRequest request,
			Object command, Errors errors, int page) throws Exception {
		
		if(page == 1) {
			
			List<String> types = new ArrayList<>();
			types.add("�Ϲ�ȸ��");
			types.add("���ȸ��");
			types.add("Ư��ȸ��");
			
			Map<String, List<String>> map = new HashMap<String, List<String>>();
			map.put("types", types);
			
			return map;
		}
		//page 2, 3�� ������� �����Ƿ� ������ null�� ��ȯ���� �־���
		
		return null;
	}

}
