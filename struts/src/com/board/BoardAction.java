package com.board;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.util.DBConn;
import com.util.MyUtil;

public class BoardAction extends DispatchAction {

	public ActionForward write(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		return mapping.findForward("created");

	}

	public ActionForward write_ok(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAO(conn);

		BoardForm f = (BoardForm) form;

		int maxNum = dao.getMaxNum();

		f.setNum(maxNum + 1);
		f.setIpAddr(request.getRemoteAddr());

		dao.insertData(f);

		return mapping.findForward("save");

	}

	public ActionForward list(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAO(conn);

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
		int dataCount = dao.getDataCount(searchKey, searchValue);

		int numPerPage = 5;
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);

		if (currentPage > totalPage) {
			currentPage = totalPage;
		}

		int start = (currentPage - 1) * numPerPage;
		int end = currentPage * numPerPage;

		List<BoardForm> lists = dao.getLists(start, end, searchKey, searchValue);

		String param = "";
		if (searchValue != null && !searchValue.equals("")) {
			param = "searchKey=" + searchKey;
			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}

		String listUrl = cp + "/board.do?method=list";

		if (!param.equals("")) {
			listUrl += "&" + param;
		}

		String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

		String articleUrl = cp + "/board.do?method=article&pageNum=" + currentPage;

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

	public ActionForward article(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAO(conn);

		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");

		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		if (searchValue != null) {
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
		dao.updateHitCount(num);

		BoardForm dto = dao.getReadData(num);

		if (dto == null) {
			return mapping.findForward("list");
		}

		int lineSu = dto.getContent().split("\n").length;

		dto.setContent(dto.getContent().replaceAll("\n", "<br/>"));

		String param = "pageNum=" + pageNum;

		if (searchValue != null && !searchValue.equals("")) {
			param += "&searchKey=" + searchKey;
			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");

		}
		request.setAttribute("dto", dto);
		request.setAttribute("params", param);
		request.setAttribute("lineSu", lineSu);
		request.setAttribute("pageNum", pageNum);

		return mapping.findForward("article");

	}

	public ActionForward updated(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAO(conn);

		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");

		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		if (searchValue != null) {
			searchValue = URLEncoder.encode(searchValue, "UTF-8");
		}

		BoardForm dto = dao.getReadData(num);

		if (dto == null) {
			return mapping.findForward("list");
		}

		String param = "pageNum=" + pageNum;

		if (searchValue != null && !searchValue.equals("")) {
			param += "&searchKey=" + searchKey;
			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}

		request.setAttribute("dto", dto);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("params", param);
		request.setAttribute("searchKey", searchKey);
		request.setAttribute("searchValue", searchValue);

		return mapping.findForward("updated");
	}

	public ActionForward updated_ok(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAO(conn);

		String pageNum = request.getParameter("pageNum");

		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		BoardForm f = (BoardForm) form;

		f.setNum(Integer.parseInt(request.getParameter("num")));

		dao.updateData(f);

		String params = "&pageNum=" + pageNum;
		if (searchValue != null && !searchValue.equals("")) {
			params += "&searchKey=" + searchKey;
			params += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");

		}

		//request.setAttribute("params", params);
		//request.setAttribute("pageNum", pageNum);

		//return mapping.findForward("updated_ok");

		ActionForward af = new ActionForward();
		af.setRedirect(true);
		af.setPath("/board.do?method=list" + params);
	
		return af;
	
	}

	public ActionForward deleted_ok(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAO(conn);
		
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");

		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		dao.deleteData(num);
		
		String params = "&pageNum=" + pageNum;
		
		if (searchValue != null && !searchValue.equals("")) {
			params += "&searchKey=" + searchKey;
			params += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");

		}
	
		ActionForward af = new ActionForward();
		af.setRedirect(true);
		af.setPath("/board.do?method=list" + params);
	
		return af;
	
		
	}
}
