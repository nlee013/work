package com.fileTest;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.DBConn;
import com.util.FileManager;
import com.util.MyUtil;

public class FileTestServlet extends HttpServlet{

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
		FileTestDAO dao = new FileTestDAO(conn);
		
		MyUtil myUtil = new MyUtil();
		
		String cp = req.getContextPath();
		String uri = req.getRequestURI();
		
		String url;
		
		//���� ���� ��� �����
		String root = getServletContext().getRealPath("/");
		String path = root + "pds" + File.separator + "saveFile";
		
		File f = new File(path);
		
		if(!f.exists()) {
			
			f.mkdirs();
		}
		
		if(uri.indexOf("write.do") != -1) {
			
			url = "/fileTest/write.jsp";	
			forward(req, resp, url);
			
		}else if(uri.indexOf("write_ok.do") != -1) {
			
			//���� ���ε�
			String encType = "UTF-8";
			int maxSize =10*1024*1024;//10�ް�
			
			MultipartRequest mr = new MultipartRequest(req, path, maxSize, encType,
								  new DefaultFileRenamePolicy());
			
			//���� ���� DB�� ����
			if(mr.getFile("upload") != null) {
				
				FileTestDTO dto = new FileTestDTO();
				
				int maxNum = dao.getMaxNum();
			
				dto.setNum(maxNum + 1);
				dto.setSubject(mr.getParameter("subject"));
				dto.setSaveFileName(mr.getFilesystemName("upload"));
				dto.setOriginalFileName(mr.getOriginalFileName("upload"));
				
				dao.insertData(dto);
			
			}
			
			url = cp + "/file/list.do";
			resp.sendRedirect(url);
		
		//�� list�� ����ڰ� ������ ���ε带 �����ϸ� �Ѿ���� ��
		}else if(uri.indexOf("list.do") != -1) {
		
			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;
			
			if(pageNum != null) {
				
				currentPage = Integer.parseInt(pageNum);
			}	
			
			int dataCount = dao.getDataCount();
			
			int numPerPage = 5;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
				
			if(currentPage > totalPage) {
					
				currentPage = totalPage;
			}
			
			int start = (currentPage - 1)*numPerPage + 1;
			int end = currentPage*numPerPage;
				
			//list �޾Ƴ���
			List<FileTestDTO> lists = dao.getLists(start, end);
			
			String listUrl = cp + "/file/list.do";
					
			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			String deletePath = cp + "/file/delete.do?pageNum="+ currentPage;
			
			//forwarding �������� data �ѱ��
			req.setAttribute("lists", lists);
			req.setAttribute("deletePath", deletePath);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			
			url = "/fileTest/list.jsp";	
			forward(req, resp, url);
			
		}else if(uri.indexOf("delete.do") != -1) {
			
			
			int num = Integer.parseInt(req.getParameter("num"));
			
			//System.out.println(num);
			
			String pageNum = req.getParameter("pageNum");
			
			FileTestDTO dto = dao.getReadData(num);
			
			
			//���ϻ���
			FileManager.doFileDelete(dto.getSaveFileName(), path);
			
			//DB����
			dao.deleteData(num);
			
			url = cp + "/file/list.do?pageNum=" + pageNum;
			resp.sendRedirect(url);
		}
		
		
	}
	
}
