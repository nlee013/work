package com.fileTest;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.board.BoardDTO;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.util.FileManager;
import com.util.MyUtil;
import com.util.dao.CommonDAO;
import com.util.dao.CommonDAOImpl;

public class FileTestAction extends ActionSupport
			implements Preparable, ModelDriven<FileTestDTO>{

	private static final long serialVersionUID = 1L;

	private FileTestDTO dto;
	
	public FileTestDTO getDto() {
		
		return dto;
	}

	@Override
	public FileTestDTO getModel() {
		
		return dto;
	}

	@Override
	public void prepare() throws Exception {
		
		dto = new FileTestDTO();
		
	}

	//파일 업로드
	public String created() throws Exception {
		
		if(dto == null || dto.getMode() == null || dto.getMode().equals("")) {
			
			return INPUT;
		}
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		
		String root = session.getServletContext().getRealPath("/");
		String savePath = root + "pds" + File.separator + "data";
		
		//dto에 있는 upload
		saveFileName = FileManager.doFileUpload(dto.getUpload(), dto.getUploadFileName(), savePath);

		originalFileName = dto.getUploadFileName();
	
		return SUCCESS;
		
	}
	
	public String list() throws IOException{
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		MyUtil myUtil = new MyUtil();
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		String cp = request.getContextPath();
		
		int numPerPage = 10;
		int totalPage = 0;
		int totalDataCount = 0;
		
		int currentPage = 1;
		
		if(dto.getPageNum()!=null && !dto.getPageNum().equals("")) {
			currentPage = Integer.parseInt(dto.getPageNum());
		}
		
		Map<String, Object> hMap = new HashMap<String, Object>();
		
		
		totalDataCount = dao.getIntValue("fileTest.dataCount", hMap);
		
		if(totalDataCount!=0) {
			totalPage = myUtil.getPageCount(numPerPage, totalDataCount);
		}
		
		if(currentPage > totalPage) {
			currentPage = totalPage;
		}
		
		int start = (currentPage-1)*numPerPage+1;
		int end = currentPage*numPerPage;
		
		hMap.put("start", start);
		hMap.put("end", end);
		
		List<Object> lists = (List<Object>)dao.getListData("fileTest.listData", hMap);
		
		int listNum,n=0;
		
		Iterator<Object> it = lists.iterator();
		while(it.hasNext()) {
			
			FileTestDTO vo = (FileTestDTO)it.next();
			listNum = totalDataCount-(start+n-1);
			vo.setListNum(listNum);
			n++;	
		}
		
		String param = "";
		String urlList = "";
		
		//사용자정의
		urlList = cp + "/fileTest/list.action?pageNum=" + currentPage;

		if(!param.equals("")) {
			
			urlList += "&" + param;
		}
		
		request.setAttribute("lists", lists);
		request.setAttribute("totalDataCount", totalDataCount);
		request.setAttribute("pageIndexList", myUtil.pageIndexList(currentPage, totalPage, urlList));
		
		
		return SUCCESS;
	}

	//파일 다운로드
	public String download() throws Exception {
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpSession session = request.getSession();
		
		String root = session.getServletContext().getRealPath("/");
		String savePath = root + "pds" + File.separator + "data";
		
		FileManager.doFileDownload(response, saveFileName, originalFileName, savePath);
		
		return null;
		
		/*struts-fileTest.xml에서
		 <action name="download" class="com.fileTest.FileTestAction" method="download">
		 	<!-- return값이 null이여서 틀만 만들어주면 됌 -->
		 </action>
		 */
		
	}
	//파일 보기
	public String down() throws Exception {
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		
		String root = session.getServletContext().getRealPath("/");
		String savePath = root + "pds" + File.separator + "data";
		
		originalFileName = new String(originalFileName.getBytes("euc-kr"), "8859_1");
		
		String fullFileName = savePath + File.separator + saveFileName;
		
		inputStream = new FileInputStream(fullFileName);
		
		return SUCCESS;
		
	}
	
	private InputStream inputStream;
	private String saveFileName;
	private String originalFileName;

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String getSaveFileName() {
		return saveFileName;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	
	
}
