package com.test2;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class TestAction extends ActionSupport
	implements Preparable, ModelDriven<UserDTO>{

	//struts에서는 이런 구조를 항상 써줘야됌-----------
	private UserDTO dto;//struts2에서는 dto를 관리함->ModelDriven
	//dto도 class이므로 Preparable을 통해서 객체 생성
	//객체를 생성한 것을 ModelDriven으로 받아냄
	
	//request.setAttribute("dto", dto);를 대신하므로 안써도 됌
	//아래에 의해서 넘어가고 ModelDriven으로 인해서 dto를 받아내기 때문
	
	public UserDTO getDto() {
		return dto;
	}

	@Override
	public UserDTO getModel() {
		
		return dto;
	}

	@Override
	public void prepare() throws Exception {
		
		//여긴 항상 코드 같음
		dto = new UserDTO();
	}

	//-----------------------------------------------------
	
	public String created() throws Exception {
		
		//원래 struts에서는 mode를 사용시, mode 검사하는 코드를 써줘야됌
		if(dto == null || dto.getMode() == null || dto.getMode().equals("")) {
			
			return INPUT;//SUCCESS와 같은 느낌
			
		}
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("message", "Struts2..");
		
		//request.setAttribute("dto", dto);
		
		return SUCCESS;
	}
}
