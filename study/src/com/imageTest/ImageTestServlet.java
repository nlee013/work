package com.imageTest;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.DBConn;
import com.util.FileManager;
import com.util.MyUtil;

public class ImageTestServlet extends HttpServlet {

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
		
		Connection conn = DBConn.getConnection();
		ImageTestDAO dao = new ImageTestDAO(conn);
		MyUtil myUtil = new MyUtil();
		
		String uri = req.getRequestURI();
		
		String url;
		
		// ���� ���� ���
		String root = getServletContext().getRealPath("/");
		String path = root + "pds" + File.separator + "imageFile";
		
		File f = new File(path);
		
		if(!f.exists()) {
			f.mkdirs();
		}
		
		if(uri.indexOf("write.do") != -1) {
			
			url = "/imageTest/write.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("write_ok.do") != -1) {
			
			// 1) ���� ���ε�
			
			String encType = "UTF-8";
			int maxSize = 10*1024*1024; // 10MB
			
			MultipartRequest mr = new MultipartRequest(req, path, maxSize, encType, new DefaultFileRenamePolicy());
			
			if(mr.getFile("upload") != null) {
				
				ImageTestDTO dto = new ImageTestDTO();
				
				int maxNum = dao.getMaxNum();
				
				dto.setNum(maxNum + 1);
				dto.setSubject(mr.getParameter("subject"));
				dto.setSaveFileName(mr.getFilesystemName("upload"));
				
				
				// 2) ���� ���� DB�� ����
				dao.insertData(dto);
				
			}else if(mr.getFile("upload") == null) {
				
				System.out.print("������ �����ϼ���!");
				
				url = cp + "/image/write.do";
				resp.sendRedirect(url);
				return;
				
			}
			
			url = cp + "/image/list.do";
			resp.sendRedirect(url);
			
		}else if(uri.indexOf("list.do") != -1) {
			
			String deletePath = cp + "/image/delete.do";
			
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
			
			List<ImageTestDTO> lists = dao.getLists(start, end);
			
			
			String listUrl = cp + "/image/list.do";
			
			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
			String imagePath = cp + "/pds/imageFile";//�̹����� ���� �ּҷ� ��
			
			req.setAttribute("lists", lists);
			req.setAttribute("deletePath", deletePath);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("imagePath", imagePath);
			
			
			url = "/imageTest/list.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("delete.do") != -1) {
			
			int num = Integer.parseInt(req.getParameter("num"));
			ImageTestDTO dto = dao.getReadData(num);
			
			
			//���� ����
			FileManager.doFileDelete(dto.getSaveFileName(), path);
			
			//DB ����
			dao.deleteData(num);
			
			url = cp + "/image/list.do";
			resp.sendRedirect(url);
			
		}
		
	}

	
}
