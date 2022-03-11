package com.test2;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class TestAction extends ActionSupport
	implements Preparable, ModelDriven<UserDTO>{

	//struts������ �̷� ������ �׻� ����߉�-----------
	private UserDTO dto;//struts2������ dto�� ������->ModelDriven
	//dto�� class�̹Ƿ� Preparable�� ���ؼ� ��ü ����
	//��ü�� ������ ���� ModelDriven���� �޾Ƴ�
	
	//request.setAttribute("dto", dto);�� ����ϹǷ� �Ƚᵵ ��
	//�Ʒ��� ���ؼ� �Ѿ�� ModelDriven���� ���ؼ� dto�� �޾Ƴ��� ����
	
	public UserDTO getDto() {
		return dto;
	}

	@Override
	public UserDTO getModel() {
		
		return dto;
	}

	@Override
	public void prepare() throws Exception {
		
		//���� �׻� �ڵ� ����
		dto = new UserDTO();
	}

	//-----------------------------------------------------
	
	public String created() throws Exception {
		
		//���� struts������ mode�� ����, mode �˻��ϴ� �ڵ带 ����߉�
		if(dto == null || dto.getMode() == null || dto.getMode().equals("")) {
			
			return INPUT;//SUCCESS�� ���� ����
			
		}
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("message", "Struts2..");
		
		//request.setAttribute("dto", dto);
		
		return SUCCESS;
	}
}
