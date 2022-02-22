package com.join;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DBConn;

public class MemberServlet extends HttpServlet {

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
		
		req.setCharacterEncoding("UTF-8");
		
		Connection conn = DBConn.getConnection();
		MemberDAO dao = new MemberDAO(conn);
		
		String cp = req.getContextPath();
		String uri = req.getRequestURI();
		
		String url;
		
		//â ����
		if(uri.indexOf("created.do") != -1) {
			
			url = "/member/created.jsp";//�����ּ�
			forward(req, resp, url);
			
		}else if(uri.indexOf("created_ok.do") != -1) {
			
			MemberDTO dto = new MemberDTO();
			
			dto.setUserId(req.getParameter("userId"));
			dto.setUserPwd(req.getParameter("userPwd"));
			dto.setUserName(req.getParameter("userName"));
			dto.setUserBirth(req.getParameter("userBirth"));
			dto.setUserTel(req.getParameter("userTel"));
			
			dao.insertData(dto);
			
			url = cp; //+ "index.jsp"; �Ƚᵵ ����.web.xml���� �̹̽Ἥ
			resp.sendRedirect(url);
		
		}else if(uri.indexOf("login.do") != -1) {
			
			url = "/member/login.jsp";
			forward(req, resp, url);
		
		}else if(uri.indexOf("login_ok.do") != -1) {
			
			String userId = req.getParameter("userId");
			String userPwd = req.getParameter("userPwd");
			
			MemberDTO dto = dao.getReadData(userId);
			
			if(dto == null || (!dto.getUserPwd().equals(userPwd))) {
				
				req.setAttribute("memo", "���̵� �Ǵ� �н����带 ��Ȯ�� �Է��ϼ���.");
				req.setAttribute("spwd", "��й�ȣ ã��");
				
				url = "/member/login.jsp";
				forward(req, resp, url);
				return;
			}
			
			HttpSession session = req.getSession();
			
			CustomInfo info = new CustomInfo();
			
			info.setUserId(dto.getUserId());
			info.setUserName(dto.getUserName());
			
			//���ǿ� �ø���
			session.setAttribute("customInfo", info);
			
			url = cp;
			resp.sendRedirect(url);
			
			
		}else if(uri.indexOf("logout.do")!=-1) {
			
			HttpSession session = req.getSession();
			
			session.removeAttribute("customInfo");
			session.invalidate();
			
			url = cp;
			resp.sendRedirect(url);
			
		}else if(uri.indexOf("updated.do")!=-1) {
			
			HttpSession session = req.getSession();
			
			CustomInfo info = (CustomInfo)session.getAttribute("customInfo");
			
			//����
			String userId = info.getUserId();
			
			MemberDTO dto = dao.getReadData(userId);
			
			req.setAttribute("dto", dto);
			
			url = "/member/updated.jsp";
			forward(req, resp, url);
			
		} else if (uri.indexOf("updated_ok.do") != -1) {
			
			MemberDTO dto = new MemberDTO();
			
			dto.setUserId(req.getParameter("userId"));
			dto.setUserPwd(req.getParameter("userPwd"));
			dto.setUserName(req.getParameter("userName"));
			dto.setUserBirth(req.getParameter("userBirth"));
			dto.setUserTel(req.getParameter("userTel"));
			
			dao.updateData(dto);
			
			url = cp + "/join/logout.do";
			resp.sendRedirect(url);
			
		} else if (uri.indexOf("searchpwd.do") != -1) {	
			
			url = "/member/searchpwd.jsp";
			forward(req, resp, url);
			
		} else if (uri.indexOf("searchpwd_ok.do") != -1) {
			
			String userId = req.getParameter("userId");
			String userTel = req.getParameter("userTel");
			
			MemberDTO dto = dao.getReadData(userId);
			
			if(dto == null || (!dto.getUserTel().equals(userTel))) {
				
				req.setAttribute("msg", "ȸ�������� �������� �ʽ��ϴ�.");

				url = "/member/searchpwd.jsp";
				forward(req, resp, url);
				return;
				
			}else if(dto.getUserTel().equals(userTel)&&(dto.getUserId().equals(userId))) {
				
				req.setAttribute("msg2", "��й�ȣ�� [" + dto.getUserPwd() + "] �Դϴ�.");

				url = "/member/login.jsp";
				forward(req, resp, url);
				return;
				
			}
			
		}
		
		
	}
	
}
