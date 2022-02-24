package com.board;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.join.CustomInfo;
import com.util.DBConn;
import com.util.MyUtil;

//서블릿 능력 부여를 상속을 통해 주기
public class BoardServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	//forward method. String url는 경로 설정 해주기
	protected void forward(HttpServletRequest req, HttpServletResponse resp, String url) throws ServletException, IOException {
		
		RequestDispatcher rd = req.getRequestDispatcher(url);
		
		rd.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//req.setCharacterEncoding("UTF-8");
		
		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAO(conn);
		
		MyUtil myUtil = new MyUtil();//얘는 list에서만 사용하지만 나머지는 항상 공통으로 필요한 애들
		
		String cp = req.getContextPath();//cp->/study
		String uri = req.getRequestURI();//->study/sboard/created.do
		
		String url;
		
		if(uri.indexOf("created.do") != -1) {
			
			HttpSession session = req.getSession();
			
			//로그인 처리--------------------------------------------------------
			CustomInfo info = (CustomInfo)session.getAttribute("customInfo");
			
			if(info == null) {
				
				url = "/member/login.jsp";
				forward(req, resp, url);
				return;
			}
			//-------------------------------------------------------------------
			url = "/bbs/created.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("created_ok.do") != -1) {
			
			BoardDTO dto = new BoardDTO();
			
			int maxNum = dao.getMaxNum();
			
			dto.setNum(maxNum + 1);
			dto.setSubject(req.getParameter("subject"));
			dto.setName(req.getParameter("name"));
			dto.setEmail(req.getParameter("email"));
			dto.setPwd(req.getParameter("pwd"));
			dto.setContent(req.getParameter("content"));
			dto.setIpAddr(req.getRemoteAddr());
			
			dao.insertData(dto);
			
			url = cp + "/sboard/list.do";
			resp.sendRedirect(url);
			
		}else if(uri.indexOf("list.do") != -1) {
			
			String pageNum = req.getParameter("pageNum");
			
			int currentPage = 1;
			
			if(pageNum != null) {
				
				currentPage = Integer.parseInt(pageNum);
			}	
			
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
				
				//나중에는 searchValue.equals("")과 같이 사용
			if(searchValue == null) {
					
					searchKey = "subject";
					searchValue = "";
	
			}else {
					
				if(req.getMethod().equals("GET")) {
						
						searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}
				
			int dataCount = dao.getDataCount(searchKey, searchValue);
				
			int numPerPage = 5;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
				
			if(currentPage > totalPage) {
					
				currentPage = totalPage;
			}
			
			int start = (currentPage - 1)*numPerPage + 1;
			int end = currentPage*numPerPage;
				
			List<BoardDTO> lists = dao.getLists(start, end, searchKey, searchValue);
				
			String param = "";
				
			if(searchValue != null && !searchValue.equals("")) {
					
				param = "searchKey=" + searchKey;
				param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
				
			String listUrl = cp + "/sboard/list.do";
				
			if(!param.equals("")) {
					
				listUrl += "?" + param;
			}
				
			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			String articleUrl = cp + "/sboard/article.do?pageNum=" + currentPage;
			
			if(!param.equals("")) {
				
				articleUrl += "&" + param;
				
			}
			
			//forwarding 페이지에 data 넘기기
			req.setAttribute("lists", lists);
			req.setAttribute("articleUrl", articleUrl);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			
			//forwarding 작업
			url = "/bbs/list.jsp";//실제 주소
			forward(req, resp, url);
			
			}else if(uri.indexOf("article.do") != -1) {
			
				int num = Integer.parseInt(req.getParameter("num"));
				String pageNum = req.getParameter("pageNum");
			
				String searchKey = req.getParameter("searchKey");
				String searchValue = req.getParameter("searchValue");
			
				if(searchValue != null) {
				
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			
				dao.updateHitCount(num);
				
				BoardDTO dto = dao.getReadData(num);
				
				if(dto == null) {
					
					url = cp + "/sboard/list.do";
					resp.sendRedirect(url);
					
				}
				
				int lineSu = dto.getContent().split("\n").length;
				
				dto.setContent(dto.getContent().replaceAll("\n", "<br/>"));
				
				String param = "pageNum=" + pageNum;
				
				if(searchValue != null && !searchValue.equals("")) {
					
					param += "&searchKey=" + searchKey;
					param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
				}
				
				req.setAttribute("dto", dto);
				req.setAttribute("params", param);
				req.setAttribute("lineSu", lineSu);
				req.setAttribute("pageNum", pageNum);
				
				url = "/bbs/article.jsp";
				forward(req, resp, url);
			
			}else if(uri.indexOf("updated.do") != -1) {
				
				int num = Integer.parseInt(req.getParameter("num"));
				String pageNum = req.getParameter("pageNum");
			
				String searchKey = req.getParameter("searchKey");
				String searchValue = req.getParameter("searchValue");
				
				if(searchValue != null) {
					
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
				
				BoardDTO dto = dao.getReadData(num);
				
				if(dto == null) {
					
					url = cp + "sboard/list.do";
					resp.sendRedirect(url);
				}
				
				String param = "pageNum" + pageNum;
				
				if(searchValue != null && !searchValue.equals("")) {
					
					param += "&searchKey=" + searchKey;
					param += "&searchValue=" + URLEncoder.encode(searchValue , "UTF-8");
				}
				
				req.setAttribute("dto", dto);
				req.setAttribute("pageNum", pageNum);
				req.setAttribute("params", param);
				req.setAttribute("searchKey", searchKey);
				req.setAttribute("searchValue", searchValue);
				
				url = "/bbs/updated.jsp";
				forward(req, resp, url);
				
			}else if(uri.indexOf("updated_ok.do") != -1) {
				
				String pageNum = req.getParameter("pageNum");
				
				String searchKey = req.getParameter("searchKey");
				String searchValue = req.getParameter("searchValue");
				
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(Integer.parseInt(req.getParameter("num")));
				dto.setSubject(req.getParameter("subject"));
				dto.setName(req.getParameter("name"));
				dto.setEmail(req.getParameter("email"));
				dto.setPwd(req.getParameter("pwd"));
				dto.setContent(req.getParameter("content"));
				
				dao.updateData(dto);
				
				String params = "pageNum=" + pageNum;
				
				if(searchValue != null && !searchValue.equals("")) {
					
					params += "&searchKey=" + searchKey;
					params += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
				}
				
				url = cp + "/sboard/list.do?" + params;
				resp.sendRedirect(url);
				
			
			}else if(uri.indexOf("deleted_ok.do") != -1) {
				
				int num = Integer.parseInt(req.getParameter("num"));
				String pageNum = req.getParameter("pageNum");
				
				String searchKey = req.getParameter("searchKey");
				String searchValue = req.getParameter("searchValue");
				
				dao.deleteData(num);
				
				String params = "pageNum=" + pageNum;

				if(searchValue != null && !searchValue.equals("")) {
					
					params += "&searchKey=" + searchKey;
					params += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
				}
				
				url = cp + "/sboard/list.do?" + params;
				resp.sendRedirect(url);
				
			}
			
		}
		
	}

