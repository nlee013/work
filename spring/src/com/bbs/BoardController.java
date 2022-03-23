package com.bbs;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.util.MyUtil;
import com.util.dao.CommonDAO;

@Controller("bbs.boardController")
public class BoardController {

	@Resource(name="dao")
	private CommonDAO dao;
	
	@Resource(name="myUtil")
	private MyUtil myUtil;//= new MyUtil();와 같은 구조
	
	//---객체 생성 끝
	
	@RequestMapping(value="/bbs/created.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String created(BoardCommand command, HttpServletRequest request)
		throws Exception{

		if(command == null || command.getMode() == null || command.getMode().equals("")) {
			
			request.setAttribute("mode", "insert");
			
			return "board/created";
		}
		
		//그렇지 않으면(입력시키는 코드작성)
		//int boardNumMax = dao.
		
		int boardNumMax = dao.getIntValue("bbs.boardNumMax");
		
		command.setBoardNum(boardNumMax + 1);
		command.setIpAddr(request.getRemoteAddr());
		
		dao.insertData("bbs.insertData", command);
		
		return "redirect:/bbs/list.action";
	}
	
	@RequestMapping(value="/bbs/list.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String list(HttpServletRequest request) throws Exception{
		
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
		if(pageNum != null && pageNum.equals("")) {
			
			currentPage = Integer.parseInt(pageNum);
		}
		
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");
		
		if(searchValue == null) {
			
			searchKey = "subject";
			searchValue = "";
		}
		
		if(request.getMethod().equalsIgnoreCase("GET")) {
			
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
		
		Map<String, Object> hMap = new HashMap<String, Object>();
		hMap.put("searchKey", searchKey);
		hMap.put("searchValue", searchValue);
		
		totalDataCount = dao.getIntValue("bbs.dataCount", hMap);
		
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
		
		List<Object> lists = dao.getListData("bbs.listData", hMap);
		
		int listNum, n = 0;
		//리스트의 최적화된 iterator
		ListIterator<Object> it = lists.listIterator();
		
		while(it.hasNext()) {
			
			BoardCommand data = (BoardCommand)it.next();
			
			listNum = totalDataCount - (start + n - 1);
			data.setListNum(listNum);
			
			n++;
		}
		
		String params = "";
		String urlList = "";
		String urlArticle = "";
		
		if(!searchValue.equals("")) {
			
			searchValue = URLEncoder.encode(searchValue, "UTF-8");
			params = "searchKey=" + searchKey + "&searchValue=" + searchValue;
		}
		
		if(params.equals("")) {
			
			urlList = cp + "/bbs/list.action";
			urlArticle = cp + "/bbs/article.action?pageNum=" + currentPage;
			
		}else {
			
			urlList = cp + "/bbs/list.action?" + params;
			urlArticle = cp + "/bbs/article.action?pageNum=" + currentPage + "&" + params;	
		}
		request.setAttribute("lists", lists);
		request.setAttribute("urlArticle", urlArticle);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("totalDataCount", totalDataCount);
		request.setAttribute("pageIndexList", myUtil.pageIndexList(currentPage, totalPage, urlList));
				
		return "board/list";
	}
	
	@RequestMapping(value="/bbs/article.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String article(HttpServletRequest request) throws Exception{
		
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		String pageNum = request.getParameter("pageNum");
		
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");
		
		if(searchValue == null) {
			
			searchKey = "subject";
			searchValue = "";
			
		}
		
		if(request.getMethod().equalsIgnoreCase("GET")) {
			
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
		
		dao.updateData("bbs.updateHitCount", boardNum);
		
		BoardCommand dto = (BoardCommand)dao.getReadData("bbs.readData", boardNum);
		
		if(dto == null) {
			return "redirect:/bbs/list.action";
		}
		
		int lineSu = dto.getContent().split("\r\n").length;
		
		dto.setContent(dto.getContent().replace("\r\n", "<br/>"));
		
		Map<String, Object> hMap = new HashMap<>();
		hMap.put("searchKey", searchKey);
		hMap.put("searchValue", searchValue);
		hMap.put("boardNum", boardNum);
		
		BoardCommand preReadData = 
				(BoardCommand)dao.getReadData("bbs.preReadData", hMap);
		
		int preBoardNum = 0;
		String preSubject = "";
		
		if(preReadData != null) {
			
			preBoardNum = preReadData.getBoardNum();
			preSubject = preReadData.getSubject();
		}
		
		BoardCommand nexReadData = 
				(BoardCommand)dao.getReadData("bbs.nextReadData", hMap);
		
		int nextBoardNum = 0;
		String nextSubject = "";
		
		if(nexReadData != null) {
			
			nextBoardNum = nexReadData.getBoardNum();
			nextSubject = nexReadData.getSubject();
		}
		
		String params = "pageNum=" + pageNum;
		
		if(!searchValue.equals("")) {
			
			searchValue = URLEncoder.encode(searchValue, "UTF-8");
			params += "&searchKey=" + searchKey;
			params += "&searchValue=" + searchValue;
		}
		
		request.setAttribute("dto", dto);
		request.setAttribute("preBoardNum", preBoardNum);
		request.setAttribute("preSubject", preSubject);
		
		request.setAttribute("nextBoardNum", nextBoardNum);
		request.setAttribute("nextSubject", nextSubject);
		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("params", params);
		request.setAttribute("lineSu", lineSu);
		
		return "board/article";
	}
	//수정화면(창)
	@RequestMapping(value="/bbs/updated.action", method= {RequestMethod.GET})
	public String updateForm(HttpServletRequest request) throws Exception{
		
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		String pageNum = request.getParameter("pageNum");
		
		BoardCommand dto = 
				(BoardCommand)dao.getReadData("bbs.readData", boardNum);
		
		if(dto == null) {
			return "redirect:/bbs/list.action?pageNum=" + pageNum;
		}
		
		request.setAttribute("dto", dto);
		request.setAttribute("mode", "update");
		request.setAttribute("pageNum", pageNum);
		
		return "board/created";
		
	}
	
	//진짜 수정(입력값이 있기 때문에 command 필요)
	@RequestMapping(value="/bbs/updated.action", method= {RequestMethod.POST})
	public String updateSubmit(BoardCommand command, HttpServletRequest request) throws Exception{
		
		dao.updateData("bbs.updateData", command);
		//jsp로 보내는것이 아니라 redirect(update하기때문에)
		
		/*
		1번)list()에서 session으로 받음
		HttpSession session = request.getSession();
		session.setAttribute("pageNum", command.getPageNum());
		dto는 알아서 자동으로 넘어간다고 했음
		*/	
		
		//return "redirect:/bbs/list.action";
		
		//2번)
		return "redirect:/bbs/list.action?pageNum=" + command.getPageNum();
	}
	
	//delete는 보통 get방식으로 옴
	
	@RequestMapping(value="/bbs/deleted.action", method= {RequestMethod.GET})
	public String delete(HttpServletRequest request) throws Exception{
		
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		String pageNum = request.getParameter("pageNum");
		
		dao.deleteData("bbs.deleteData", boardNum);
		
		return "redirect:/bbs/list.action?pageNum=" + pageNum;
	}
}
