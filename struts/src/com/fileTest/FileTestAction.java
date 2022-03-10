package com.fileTest;

import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.util.FileManager;
import com.util.MyUtil;
import com.util.dao.CommonDAO;
import com.util.dao.CommonDAOImpl;

public class FileTestAction extends DispatchAction{
	
	public ActionForward write(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("write");
	}
	
	public ActionForward write_ok(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		//오리지날 경로를 만들고 싶음->session필요
		HttpSession session = request.getSession();
		
		String root = session.getServletContext().getRealPath("/");
		
		String savePath = root + "pds" + File.separator + "saveFile";
		
		FileTestForm f = (FileTestForm)form;
		
		//파일업로드
		String newFileName = FileManager.doFileUpload(f.getUpload(), savePath);
		
		//파일정보 DB에 넣기
		if(newFileName!=null) {
			
			int maxNum = dao.getIntValue("fileTest.maxNum");
			
			f.setNum(maxNum + 1);
			f.setSaveFileName(newFileName);
			f.setOriginalFileName(f.getUpload().getFileName());
			
			dao.insertData("fileTest.insertData", f);
			
		}
		
		return mapping.findForward("write_ok");
	}

	public ActionForward list(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		MyUtil myUtil = new MyUtil();
		
		String cp = request.getContextPath();
		
		int numPerPage = 5;
		int totalPage = 0;
		int totalDataCount = 0;
		
		String pageNum = request.getParameter("pageNum");
		
		int currentPage = 1;
		
		if(pageNum!=null && !pageNum.equals("")) {
			currentPage = Integer.parseInt(pageNum);
		}
		
		totalDataCount = dao.getIntValue("fileTest.dataCount");
		
		if(totalDataCount!=0) {
			totalPage = myUtil.getPageCount(numPerPage, totalDataCount);
		}
		
		if(currentPage > totalPage) {
			currentPage = totalPage;
		}
		
		Map<String, Object> hMap = new HashMap<String, Object>();
		
		int start = (currentPage-1)*numPerPage+1;
		int end = currentPage*numPerPage;
		
		hMap.put("start", start);
		hMap.put("end", end);
		
		List<Object> lists = (List<Object>)dao.getListData("fileTest.listData", hMap);
		
		//일련번호 만드는 공식-----------------------------
		Iterator<Object> it = lists.iterator();
		int listNum,n=0;
		String str;
		
		//data 갯수가 몇개인지 모르기에 while문
		while(it.hasNext()) {
			
			FileTestForm dto = (FileTestForm)it.next();
			
			listNum = totalDataCount - (start + n - 1);
			dto.setListNum(listNum);
			
			n++;
			//일련번호 만드는 공식 끝------------------------------
			
			//파일 다운로드 경로(미리 만들어 놓은 것일 뿐 위 코드와 연관 X)
			//만들어 놓는 김에 만든 것
			str = cp + "/fileTest.do?method=download&num=" + dto.getNum();
			dto.setUrlFile(str);
					
		}
		
		
		String urlList = cp + "/fileTest.do?method=list";
		
		request.setAttribute("lists", lists);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalDataCount", totalDataCount);
		request.setAttribute("pageIndexList", 
				myUtil.pageIndexList(currentPage, totalPage, urlList));
		
	
		
		return mapping.findForward("list");
	}

	public ActionForward delete(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		HttpSession session = request.getSession();
		
		String root = session.getServletContext().getRealPath("/");
		String savePath = root + "pds" + File.separator + "saveFile";
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		//하나의 데이터 읽어옴. saveFileName과 originalFileName이 필요하기 때문
		FileTestForm dto = 
				(FileTestForm)dao.getReadData("fileTest.readData", num);
		
		FileManager.doFileDelete(dto.getSaveFileName(), savePath);
		
		//DB에 있는 파일 삭제
		dao.deleteData("fileTest.deleteData", num);
		
		
		return mapping.findForward("delete_ok");
		
	}
	
	public ActionForward download(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		HttpSession session = request.getSession();
		
		String root = session.getServletContext().getRealPath("/");
		String savePath = root + "pds" + File.separator + "saveFile";
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		FileTestForm dto =
				(FileTestForm)dao.getReadData("fileTest.readData", num);
		
		if(dto==null) {
			return mapping.findForward("list");
		}
		
		//파일을 다운받을 때 boolen 값을 반환
		boolean flag = FileManager.doFileDownload(response, dto.getSaveFileName(),
				dto.getOriginalFileName(), savePath);
		
		//true가 아니면(false이면), 
		if(!flag) {
			
			response.setContentType("text/html;charset=utf-8");
			
			PrintWriter out = response.getWriter();
			
			//하이퍼링크는 자바스크립트 영역으로 갈 수 없기 때문에 여기서 작성
			out.print("<script type='text/javascript'>");
			out.print("alert('다운로드 에러!');");
			out.print("history.back()");
			out.print("</script>");
			
			
		}
		
		//화면이 아무변화 없을 때 null을 준다
		return mapping.findForward(null);

	}
}
