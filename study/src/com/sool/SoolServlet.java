package com.sool;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.FileManager;
import com.util.MyUtil;
import com.util.SJDBConn;

public class SoolServlet extends HttpServlet{

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
		String cp = req.getContextPath();
		
		Connection conn = SJDBConn.getConnection();
		SoolDAO dao = new SoolDAO(conn);
		MyUtil myUtil = new MyUtil();
		
		String uri = req.getRequestURI();
		
		String url;
		
		// ���� ���� ���
		String root = getServletContext().getRealPath("/");
		String path = root + "sool" + File.separator + "imageFile";
		
		File f = new File(path);
		
		if(!f.exists()) {
			f.mkdirs();
		}
		
		if(uri.indexOf("sool_upload.com") != -1) {
			
			url = "/sool/sool_upload.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("sool_upload_ok.com") != -1) {
			
			// 1) ���� ���ε�
			
			String encType = "UTF-8";
			int maxSize = 10*1024*1024; // 10MB
			
			MultipartRequest mr = new MultipartRequest(req, path, maxSize, encType, new DefaultFileRenamePolicy());
			
			if(mr.getFile("upload") != null) {
				
				SoolDTO dto = new SoolDTO();
				
				int maxNum = dao.getMaxNum();
				
				dto.setNum(maxNum + 1);
				dto.setSubject(mr.getParameter("subject"));
				dto.setSaveFileName(mr.getFilesystemName("upload"));
				
				
				// 2) ���� ���� DB�� ����
				dao.insertData(dto);
				
			}else if(mr.getFile("upload") == null) {
				
				System.out.print("������ �����ϼ���!");
				
				url = cp + "/homesool/sool_update.com";
				resp.sendRedirect(url);
				return;
				
			}
			
			url = cp + "/homesool/list.com";
			resp.sendRedirect(url);
			
		}else if(uri.indexOf("list.com") != -1) {
			
			String deletePath = cp + "/homesool/delete.com";
			
			int dataCount = dao.getDataCount();
			
			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;
			
				if(pageNum != null) {
					
					currentPage = Integer.parseInt(pageNum);
				}
			int numPerPage = 6;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
			
				if(currentPage > totalPage) {
					
					currentPage = totalPage;
				}
			
			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;
			
			List<SoolDTO> lists = dao.getLists(start, end);
			
			
			String listUrl = cp + "/homesool/list.com";
			
			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
			String imagePath = cp + "/sool/imageFile";//�̹����� ���� �ּҷ� ��
			
			req.setAttribute("lists", lists);
			req.setAttribute("deletePath", deletePath);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("imagePath", imagePath);
			
			
			url = "/sool/list.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("delete.com") != -1) {
			
			int num = Integer.parseInt(req.getParameter("num"));
			SoolDTO dto = dao.getReadData(num);
			
			
			//���� ����
			FileManager.doFileDelete(dto.getSaveFileName(), path);
			
			//DB ����
			dao.deleteData(num);
			
			url = cp + "/homesool/list.com";
			resp.sendRedirect(url);
			
		}

	}
}
