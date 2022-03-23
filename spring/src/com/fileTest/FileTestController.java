package com.fileTest;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.util.FileManager;
import com.util.MyUtil;
import com.util.dao.CommonDAO;

@Controller("fileTest.fileTestController")
public class FileTestController {
	
	@Resource(name="dao")
	private CommonDAO dao;
	
	@Resource(name="myUtil")
	private MyUtil myUtil;

	@RequestMapping(value="/fileTest/created.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String write() throws Exception{
		
		return "fileTest/write";
	}
	
	@RequestMapping(value="/fileTest/upload.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String fileUpload(FileTestCommand command, MultipartHttpServletRequest request,
			HttpSession session) throws Exception{
		
		String root = session.getServletContext().getRealPath("/");
		String savePath = root + "pds" + File.separator + "data";
		
		FileTestCommand dto = (FileTestCommand)command;
				
		MultipartFile file = request.getFile("upload");

		//dto에 있는 upload
		String saveFileName = FileManager.doFileUpload
				(file.getInputStream(), file.getOriginalFilename(), savePath);
		
		dto.setSaveFileName(saveFileName);
		dto.setOriginalFileName(file.getOriginalFilename());
		
		command.setNum(dao.getIntValue("fileTest.maxNum") + 1);
		
		dao.insertData("fileTest.insertData", dto);
		
		return "redirect:/fileTest/list.action";
	}
	
	@RequestMapping(value="/fileTest/download.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String download(HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		//파일정보 가져오기
		FileTestCommand dto = (FileTestCommand)dao.getReadData("fileTest.readData", num);
		
		HttpSession session = request.getSession();
		
		//다운 받을 파일 위치 설정
		String root = session.getServletContext().getRealPath("/");
		String savePath = root + "pds" + File.separator + "data";
		
		FileManager.doFileDownload(response, dto.getSaveFileName(), dto.getOriginalFileName(), savePath);
		
		return null;
		
	}
	
	@RequestMapping(value="/fileTest/deleted.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String delete(HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		HttpSession session = request.getSession();
		
		//물리적 파일삭제 위치 설정
		String root = session.getServletContext().getRealPath("/");
		String savePath = root + "pds" + File.separator + "data";
		
		String pageNum = request.getParameter("pageNum");
		
		FileTestCommand dto = (FileTestCommand)dao.getReadData("fileTest.readData", num);
		
		FileManager.doFileDelete(dto.getSaveFileName(), savePath);
		
		dao.deleteData("fileTest.deleteData", num);
		
		session.setAttribute("pageNum", pageNum);
		
		return "redirect:/fileTest/list.action";
	}
	
	@RequestMapping(value="/fileTest/list.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String list(FileTestCommand command, HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		HttpSession session = request.getSession();
		String cp = request.getContextPath();
		
		int numPerPage = 5;
		int totalPage = 0;
		int totalDataCount = 0;
		
		String pageNum = request.getParameter("pageNum");
		
		//수정 method에서 updateSubmit()에서 보낸 pageNum을 받음
		if(pageNum == null) {
			
			pageNum = (String)session.getAttribute("pageNum");
		}
		//받았으면 session에 있는 removeAttribute()로 지워야 다음에도 사용가능
		session.removeAttribute("pageNum");
		
		int currentPage = 1;
		if(pageNum != null && !pageNum.equals("")) {
			
			currentPage = Integer.parseInt(pageNum);
		}
		
		Map<String, Object> hMap = new HashMap<String, Object>();
		
		totalDataCount = dao.getIntValue("fileTest.dataCount", hMap);
		
		if(totalDataCount != 0) {
			
			totalPage = myUtil.getPageCount(numPerPage, totalDataCount);
		}
		
		if(currentPage > totalPage) {
			
			currentPage = totalPage;
		}
		
		int start = (currentPage - 1)* numPerPage + 1;
		int end = currentPage*numPerPage;
		
		hMap.put("start", start);
		hMap.put("end", end);
		
		List<Object> lists = dao.getListData("fileTest.listData", hMap);
		
		int listNum, n = 0;
		//리스트의 최적화된 iterator
		ListIterator<Object> it = lists.listIterator();
		
		while(it.hasNext()) {
			
			FileTestCommand data = (FileTestCommand)it.next();
			
			listNum = totalDataCount - (start + n - 1);
			data.setListNum(listNum);
			
			n++;
		}
		
		String params = "";
		String urlList = "";
		
		if(params.equals("")) {
			
			urlList = cp + "/fileTest/list.action";
			
		}else {
			
			urlList = cp + "/fileTest/list.action?" + params;
		}
		request.setAttribute("lists", lists);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("totalDataCount", totalDataCount);
		request.setAttribute("pageIndexList", myUtil.pageIndexList(currentPage, totalPage, urlList));
				
		return "fileTest/list";
	}
		
}
