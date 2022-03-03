package com.sool;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sool.CustomInfos;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.FileManager;
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
		SoolProdDAO dao1 = new SoolProdDAO(conn);
		SoolBorderDAO dao2 = new SoolBorderDAO(conn);

		MyUtil myUtil = new MyUtil();

		String cp = req.getContextPath();
		String uri = req.getRequestURI();

		String url;

		String root = getServletContext().getRealPath("/");
		String path = root + "hs" + File.separator + "prod_if";

		File f = new File(path);

		if(!f.exists()) {
			f.mkdirs();
		}

		//회원가입 파트 시작
		if(uri.indexOf("create1.com")!=-1) {

			url = "/sool/create1.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("create2.com")!=-1) {

			url = "/sool/create2.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("main.com")!=-1) {



			url = "/sool/main.jsp";
			forward(req, resp, url);





		}else if(uri.indexOf("create2_ok.com")!=-1) {

			String user_id = req.getParameter("user_id");
			String user_name =req.getParameter("user_name");

			List<SoolUserDTO> lists = dao.getLists();

			Iterator<SoolUserDTO> it = lists.iterator();

			while (it.hasNext()) {

				SoolUserDTO dto1 = it.next();


				if(dto1.getUser_id().contains(user_id)) {

					req.setAttribute("ovId", user_id + "는 이미 존재하는 아이디 입니다");

					url = "/sool/create2.jsp";
					forward(req, resp, url);
					return;
				}

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


			url = cp + "/homesool/create3.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("create3.com")!=-1) {


			url = "/sool/create3.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("login.com")!=-1) {



			url ="/sool/login.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("login_ok.com")!=-1) {
			//로그인 세션	
			String user_id = req.getParameter("user_id");
			String user_pwd = req.getParameter("user_pwd");

			SoolUserDTO dto = dao.getReadData(user_id);

			if(dto==null || (!dto.getUser_pwd().equals(user_pwd))) {

				req.setAttribute("message", "아이디 또는 패스워드를 정확히 입력하세요");

				//req.setAttribute("spwd", "비밀번호찾기");

				url = "/sool/login.jsp";
				forward(req, resp, url);
				return;

			}

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			infos.setUser_id(dto.getUser_id());
			infos.setUser_name(dto.getUser_name());
			infos.setUser_pwd(dto.getUser_pwd());

			session.setAttribute("customInfos", infos);

			url = cp + "/homesool/main.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("list_p.com")!=-1) { 
			//상품 이미지 시작
			int dataCount = dao1.getDataCount();

			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;

			if(pageNum != null)
				currentPage = Integer.parseInt(pageNum);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage > totalPage) {
				currentPage = totalPage;
			}

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;

			List<SoolProdDTO> lists = dao1.getLists(start, end);

			String listUrl = cp + "/homesool/list_p.com";

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
			String deletePath = cp + "/homesool/delete.com";
			String imagePath = cp + "/hs/prod_if";

			req.setAttribute("lists", lists);
			req.setAttribute("deletePath", deletePath);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("imagePath", imagePath);

			url = "/sool/list_p.jsp";
			forward(req, resp, url);


		}else if(uri.indexOf("delete.com") !=-1) {

			int prod_no = Integer.parseInt(req.getParameter("prod_no"));
			SoolProdDTO dto = dao1.getReadData(prod_no);

			//파일삭제
			FileManager.doFileDelete(dto.getProd_sImg(), path);

			//db 삭제
			dao1.deleteData(prod_no);

			url = cp + "/homesool/list_p.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("upload_p.com")!=-1) {

			url = "/sool/upload_p.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("upload_p_ok.com")!=-1) {

			//파일 업로드

			String encType = "UTF-8";
			int maxSize = 10*1024*1024;

			MultipartRequest mr = new MultipartRequest(req, path, maxSize, encType, new DefaultFileRenamePolicy());



			if(mr.getFile("upload") != null) {

				SoolProdDTO dto = new SoolProdDTO();


				dto.setProd_name(mr.getParameter("prod_name"));
				dto.setProd_price(Integer.parseInt(mr.getParameter("prod_price")));
				dto.setProd_quan(Integer.parseInt(mr.getParameter("prod_quan")));
				dto.setProd_cate(mr.getParameter("prod_cate"));
				dto.setProd_oImg(mr.getOriginalFileName("upload"));
				dto.setProd_sImg(mr.getFilesystemName("upload"));

				dao1.insertData(dto);

			}

			url = cp + "/homesool/list_p.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("csCenter.com")!=-1) {	

			HttpSession session = req.getSession();
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");
			
			
			url = "/sool/csCenter.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("logout.")!=-1) {

			HttpSession session = req.getSession();

			session.removeAttribute("customInfos");
			session.invalidate();

			url = cp + "/homesool/main.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("pwd.com")!=-1) {

			url = "/sool/f_pwd.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("pwd_ok.com")!=-1) {

			String user_id = req.getParameter("user_id");					
			String user_tel = req.getParameter("user_tel");

			SoolUserDTO dto = dao.getReadData(user_id);

			List<SoolUserDTO> lists = dao.getLists();

			Iterator<SoolUserDTO> it = lists.iterator();

			while (it.hasNext()) {

				dto = it.next();

				if(dto.getUser_id().equals(user_id) && dto.getUser_tel().equals(user_tel)) {

					req.setAttribute("ovName", "회원님의 비밀번호는" + dto.getUser_pwd() + "입니다.");

					url = "/homesool/pwd.com";
					forward(req, resp, url);
					return;

				}else if(dto == null || !dto.getUser_id().equals(user_id) || !dto.getUser_tel().equals(user_tel)) {

					req.setAttribute("message2", "회원 정보를 찾을 수 없습니다.");


					url = "/homesool/pwd.com";
					forward(req, resp, url);

					return;

				}

			}


		}else if(uri.indexOf("mypage.com")!=-1) {
			
			HttpSession session = req.getSession();
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");
			
			SoolUserDTO dto = dao.getReadData(info.getUser_id());
			req.setAttribute("dto", dto);
			
			url ="/sool/myPage.jsp";
			forward(req, resp, url);
			
			
			
			
			
			//회원 정보 수정	
		}else if(uri.indexOf("update.com")!= -1) {
			
			HttpSession session = req.getSession();
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");
			
			SoolUserDTO dto = dao.getReadData(info.getUser_id());
			req.setAttribute("dto", dto);
			//회원정보수정 포워드 페이지
			
			url = "/sool/update.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("update_ok.com")!=-1) {
			
			HttpSession session = req.getSession();
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");
			
			
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
			
			
			dao.updateData(dto);
		
			url = cp + "/homesool/main.com";
			resp.sendRedirect(url);
			
		}else if(uri.indexOf("delete_ok.com")!=-1) {

			HttpSession session = req.getSession();
			
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");
			
			String user_id = info.getUser_id();

			dao.deleteData(user_id);
			
			session.removeAttribute("customInfos");
			session.invalidate();
			
			url = "/sool/deleted.jsp";
			forward(req, resp, url);
		
		}else if(uri.indexOf("delete_ok2.com")!=-1) {

			HttpSession session = req.getSession();
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");
			
			
			SoolUserDTO dto = new SoolUserDTO();
			
			String user_id = req.getParameter("user_id");

			dao.deleteData(user_id);

			url = cp + "/homesool/main.com";
			resp.sendRedirect(url);
			
			
		}else if(uri.indexOf("one_to_one.com")!=-1) {
			
			HttpSession session = req.getSession();
			
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");
			
			if(info ==null) {
				
				url = "/sool/one_to_one.jsp";                     
				forward(req, resp, url);
				return;
			}
			
			
			
			url = "/sool/one_to_one.jsp";                        
			forward(req, resp, url);
			
			
		}else if(uri.indexOf("one_to_one2.com")!=-1) {
			
			SoolBorderDTO dto = new SoolBorderDTO();
			
			int maxNum = dao2.getMaxNum();
			
			dto.setBor_no(maxNum+1);
			dto.setBor_subject(req.getParameter("bor_subject"));
			dto.setUser_id(req.getParameter("user_id"));
			dto.setBor_content(req.getParameter("bor_content"));
			dto.setBor_cate(req.getParameter("bor_cate"));
			
			dao2.insertData(dto);
			
			url = cp + "/homesool/one_to_one2.com";
			resp.sendRedirect(url);
			
			
		}
	}
}