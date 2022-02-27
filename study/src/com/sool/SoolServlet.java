package com.sool;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.join.CustomInfo;
import com.util.MyUtil;
import com.util.SJDBConn;

public class SoolServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);	
	}
	
	protected void forward(HttpServletRequest req, HttpServletResponse resp, String url) throws ServletException, IOException {
		
		RequestDispatcher rd = req.getRequestDispatcher(url);
		
		rd.forward(req, resp);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Connection conn = SJDBConn.getConnection();
		SoolUserDAO dao = new SoolUserDAO(conn);
		
		MyUtil myUtil = new MyUtil();
		
		String cp = req.getContextPath();
		String uri = req.getRequestURI();
		
		String url;
		
		//회원가입 파트 시작
		if(uri.indexOf("create1.com")!=-1) {
			
			url = "/sool/create1.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("create2.com")!=-1) {
			
			url = "/sool/create2.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("create2_ok.com")!=-1) {
			
			String user_id = req.getParameter("user_id");
			String user_name =req.getParameter("user_name");
			
			//배열로 메소드 만들기 
			SoolUserDTO dto1 = dao.getReadData(); 
				System.out.println(dto1.getUser_id());
			if(dto1.getUser_id().equals(user_id)) {
				
				System.out.println("1");
				req.setAttribute("ovId", user_id + "는 이미 존재하는 아이디 입니다");
				
				url = "/sool/create2.jsp";
				forward(req, resp, url);
				return;
				
				
			}
			
			
			
			
			SoolUserDTO dto = new SoolUserDTO();
			
			
			
			dto.setUser_id(req.getParameter("user_id"));
			dto.setUser_pwd(req.getParameter("user_pwd"));
			dto.setUser_nick(req.getParameter("user_nick"));
			dto.setUser_name(req.getParameter("user_name"));
			dto.setUser_email(req.getParameter("user_email"));
			dto.setUser_tel(req.getParameter("user_tel"));
			dto.setUser_addr1(req.getParameter("user_addr1"));
			dto.setUser_addr2(req.getParameter("user_addr2"));
			dto.setUser_gender(req.getParameter("user_gender"));
			dto.setUser_bir1(Integer.parseInt(req.getParameter("user_bir1")));
			dto.setUser_bir2(Integer.parseInt(req.getParameter("user_bir2")));
			dto.setUser_bir3(Integer.parseInt(req.getParameter("user_bir3")));
			dto.setUser_rid(req.getParameter("user_rid"));
			
			
			
			dao.insertData(dto);
			
			
		
			
			
		
			req.setAttribute("joinName", user_name);
			
		
			url = "/homesool/create3.com";
			forward(req, resp, url);
			
			
			}else if(uri.indexOf("create3.com")!=-1) {
		
			url = "/sool/create3.jsp";
			forward(req, resp, url);
			
		}
		
	}
	
}
			
				
		
		
		
		
	


