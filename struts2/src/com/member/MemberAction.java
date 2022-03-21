package com.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.util.dao.CommonDAO;
import com.util.dao.CommonDAOImpl;

public class MemberAction extends ActionSupport implements Preparable,ModelDriven<MemberDTO>{

	private static final long serialVersionUID = 1L;

	private MemberDTO dto;

	private String message;

	public MemberDTO getDto() {
		return dto;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public MemberDTO getModel() {
		return dto;
	}

	@Override
	public void prepare() throws Exception {
		dto = new MemberDTO();
	}

	public String created() throws Exception {

		HttpServletRequest request = ServletActionContext.getRequest();

		if(dto==null || dto.getMode()==null || dto.getMode().equals("")) {
			return INPUT;
		}

		CommonDAO dao = CommonDAOImpl.getInstance();

		String userId=dto.getUserId();

		if(dao.getReadData("member.getId", userId)==null) {

			dao.insertData("member.insertData", dto);

			dao = null;

		}
		else {

			request.setAttribute("message", "이미 존재하는 아이디입니다.");

			return INPUT;
		}

		return SUCCESS;
	}

	//로그인

	public String login() throws Exception {
		
		
		if(dto==null||dto.getMode()==null||dto.getMode().equals("")){

			return INPUT;

		}
		
		HttpServletRequest request = ServletActionContext.getRequest();

		CommonDAO dao = CommonDAOImpl.getInstance();

		
		String userId=dto.getUserId();
		String userPwd=dto.getUserPwd();
		
		System.out.println(userId);
		System.out.println(userPwd);
		

		Map<String, Object> hMap = new HashMap<>();
		hMap.put("userId", userId);
		hMap.put("userPwd", userPwd);

		MemberDTO loginDTO = (MemberDTO)dao.getReadData("member.readData",hMap);

		

		//dto==null일 경우 아이디가 없음

		if(loginDTO==null){

			request.setAttribute("message", "아이디 또는 패스워드를 <br/> 정확히 입력하세요!");

			return INPUT;
			
		}
		
		HttpSession session = request.getSession();

		session.setAttribute("MemberDTO", loginDTO);
		
		return SUCCESS;

	}

	//로그아웃시

	public String logout() throws Exception {

		HttpServletRequest request = ServletActionContext.getRequest();

		HttpSession session = request.getSession();

		session.removeAttribute("dto");

		session.removeAttribute("MemberDTO");

		session.invalidate();

		return SUCCESS;

	}

}
