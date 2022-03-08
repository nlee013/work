package com.boardTest;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.util.MyUtil;
import com.util.dao.CommonDAO;
import com.util.dao.CommonDAOImpl;

public class BoardAction extends DispatchAction{

	public ActionForward created(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("created");
		
	}
	
	public ActionForward created_ok(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		BoardForm f = (BoardForm)form;
		
		int maxNum = dao.getIntValue("board.maxNum");
		
		f.setNum(maxNum + 1);
		f.setIpAddr(request.getRemoteAddr());
		
		dao.insertData("board.insertData", f);
		
		return mapping.findForward("created_ok");
		
	}
	
	public ActionForward list(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		//BoardForm f = (BoardForm)form;

		String cp = request.getContextPath();
		MyUtil myUtil = new MyUtil();

		String pageNum = request.getParameter("pageNum");

		int currentPage = 1;

		if (pageNum != null) {
			currentPage = Integer.parseInt(pageNum);
		}

		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		if (searchValue == null) {
			searchKey = "subject";
			searchValue = "";

		} else {
			if (request.getMethod().equalsIgnoreCase("GET")) {
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			}
		}
		
		//Map에 담아서 보낸다고 했음
		//Map에 담기------------------------------------------------
		Map<String, Object> hMap = new HashMap<>();
		
		hMap.put("searchKey", searchKey);
		hMap.put("searchValue", searchValue);
		
		int dataCount = dao.getIntValue("board.dataCount", hMap);
		//-------------------------------------------------------------
		
		int numPerPage = 5;
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);

		if (currentPage > totalPage) {
			currentPage = totalPage;
		}

		int start = (currentPage - 1) * numPerPage;
		int end = currentPage * numPerPage;

		//------------------------------------------------------------------------
		
		hMap.put("start", start);
		hMap.put("end", end);
		
		List<Object> lists = dao.getListData("board.listData", hMap);
		
		//-------------------------------------------------------------------------

		String param = "";
		if (searchValue != null && !searchValue.equals("")) {
			param = "searchKey=" + searchKey;
			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}

		String listUrl = cp + "/boardTest.do?method=list";

		if (!param.equals("")) {
			listUrl += "&" + param;
		}

		String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

		String articleUrl = cp + "/boardTest.do?method=article&pageNum=" + currentPage;

		if (!param.equals("")) {
			articleUrl += "&" + param;
		}

		// 포워딩 페이지에 데이터 넘기기
		request.setAttribute("lists", lists);
		request.setAttribute("articleUrl", articleUrl);
		request.setAttribute("pageIndexList", pageIndexList);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("dataCount", dataCount);

		return mapping.findForward("list");
		
	}
	
	public ActionForward article(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");

		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		if (searchValue != null) {
			
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
			
		}else {
			searchKey = "subject";
			searchValue = "";
		}
		
		//-------------------------------------------------------
		dao.updateData("board.hitCountUpdate", num);

		BoardForm dto = (BoardForm)dao.getReadData("board.readData", num);
		//------------------------------------------------------------------
		
		if (dto == null) {
			return mapping.findForward("list");
		}

		int lineSu = dto.getContent().split("\n").length;

		dto.setContent(dto.getContent().replaceAll("\n", "<br/>"));

		//이전글--------------------------------------------------------
		
		String preUrl = "";// 이전글
		String nextUrl = "";// 다음글
		
		String cp = request.getContextPath();
		
		Map<String, Object> hMap = new HashMap<>();
		hMap.put("searchKey", searchKey);
		hMap.put("searchValue", searchValue);
		hMap.put("num",	num);
		
		String preSubject = "";
		BoardForm preDTO = (BoardForm)dao.getReadData("board.preReadData", hMap);
		
		if(preDTO != null) {
			
			preUrl = cp + "/boardTest.do?method=article&pageNum=" + pageNum;
			preUrl += "&num=" + preDTO.getNum();
			preSubject = preDTO.getSubject();
			
		}
		
		String nextSubject = "";
		BoardForm nextDTO = (BoardForm)dao.getReadData("board.nextReadData", hMap);
		
		if(nextDTO != null) {
			
			nextUrl = cp + "/boardTest.do?method=article&pageNum=" + pageNum;
			nextUrl += "&num=" + nextDTO.getNum();
			nextSubject = nextDTO.getSubject();
			
		}
		
		String urlList = cp + "/boardTest.do?method=list&pagenum=" + pageNum;
		
		if(!searchValue.equals("")) {
			
			searchValue = URLEncoder.encode(searchValue, "UTF-8");
			
			urlList += "searchKey=" + searchKey + "&searchValue=" + searchValue;
			
			//한번 더 검증하기
			if(!preUrl.equals("")) {
				
				preUrl += "searchKey=" + searchKey + "&searchValue=" + searchValue;
			}
			
			if(!nextUrl.equals("")) {
				
				nextUrl += "searchKey=" + searchKey + "&searchValue=" + searchValue;
			}
			
		}
		
		//수정과 삭제에서 사용할 인수
		String paramArticle = "num=" + num + "pageNum=" + pageNum;
		
		request.setAttribute("dto", dto);
		request.setAttribute("preSubject", preSubject);
		request.setAttribute("preUrl", preUrl);
		request.setAttribute("nextSubject", nextSubject);
		request.setAttribute("nextUrl", nextUrl);
		request.setAttribute("lineSu", lineSu);
		request.setAttribute("paramArticle", paramArticle);
		request.setAttribute("urlList", urlList);
		
		return mapping.findForward("article");
		
	}
	//---------------------------------------------------------------------------
}
