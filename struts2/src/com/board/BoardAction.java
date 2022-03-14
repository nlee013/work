package com.board;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.util.MyUtil;
import com.util.dao.CommonDAO;
import com.util.dao.CommonDAOImpl;

public class BoardAction extends ActionSupport
	implements Preparable, ModelDriven<BoardDTO>{

	private static final long serialVersionUID = 1L;
	
	private BoardDTO dto;	

	public BoardDTO getDto() {
		return dto;
	}

	@Override
	public BoardDTO getModel() {
		return dto;
	}

	@Override
	public void prepare() throws Exception {
		
		dto = new BoardDTO();
	}

	public String created() throws IOException{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		//입력창
		if(dto==null||dto.getMode()==null||dto.getMode().equals("")) {
			
			request.setAttribute("mode", "create");
			
			return INPUT;
		}
		
		//입력
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		int maxBoardNum = dao.getIntValue("bbs.maxBoardNum");
		
		dto.setBoardNum(maxBoardNum +1);
		dto.setIpAddr(request.getRemoteAddr());
		dto.setGroupNum(dto.getBoardNum());
		dto.setDepth(0);
		dto.setOrderNo(0);
		dto.setParent(0);
		
		dao.insertData("bbs.insertData", dto);
		
		
		
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
		
		if(dto.getSearchValue()==null||dto.getSearchValue().equals("")) {
			dto.setSearchKey("subject");
			dto.setSearchValue("");
		}
		
		if(request.getMethod().equalsIgnoreCase("GET")) {
			dto.setSearchValue(URLDecoder.decode(dto.getSearchValue(), "UTF-8"));
		}
		
		Map<String, Object> hMap = new HashMap<String, Object>();
		hMap.put("searchKey", dto.getSearchKey());
		hMap.put("searchValue", dto.getSearchValue());
		
		totalDataCount = dao.getIntValue("bbs.dataCount", hMap);
		
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
		
		List<Object> lists = (List<Object>)dao.getListData("bbs.listData", hMap);
		
		int listNum,n=0;
		
		Iterator<Object> it = lists.iterator();
		while(it.hasNext()) {
			
			BoardDTO vo = (BoardDTO)it.next();
			listNum = totalDataCount-(start+n-1);
			vo.setListNum(listNum);
			n++;	
		}
		
		String param = "";
		String urlList = "";
		String urlArticle = "";
		
		if(!dto.getSearchValue().equals("")) {
			
			param = "searchKey=" + dto.getSearchKey();
			param+= "&searchValue=" + URLEncoder.encode(dto.getSearchValue(), "UTF-8");
			
		}
		
		//사용자정의
		urlList = cp + "/bbs/list.action";
		urlArticle = cp + "/bbs/article.action?pageNum=" + currentPage;
		
		if(!param.equals("")) {
			
			urlList += "?" + param;
			urlArticle += "&" + param;
		}
		
		request.setAttribute("lists", lists);
		request.setAttribute("totalDataCount", totalDataCount);
		request.setAttribute("pageIndexList", myUtil.pageIndexList(currentPage, totalPage, urlList));
		request.setAttribute("urlArticle", urlArticle);
		
		
		return SUCCESS;
	}
	
	public String article() throws Exception{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		/*System.out.print(dto.getSearchKey());
		System.out.print(dto.getSearchValue());
		System.out.print(dto.getPageNum());
		System.out.print(dto.getBoardNum());*/
		
		String searchKey = dto.getSearchKey();
		String searchValue = dto.getSearchValue();
		String pageNum = dto.getPageNum();
		int boardNum = dto.getBoardNum();
		
		if(searchValue==null||searchValue.equals("")) {
			searchKey = "subject";
			searchValue = "";
		}
		
		if(request.getMethod().equalsIgnoreCase("GET")) {
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
		
		dao.updateData("bbs.hitCountUpdate", boardNum);
		
		//형변환 하면서 초기화가 됌 -아래 주석
		dto = (BoardDTO)dao.getReadData("bbs.readData", boardNum);
				
	/*	System.out.print(dto.getSearchKey());
		System.out.print(dto.getSearchValue());
		System.out.print(dto.getPageNum());
		System.out.print(dto.getBoardNum());*/
		
		if(dto==null) {
			return "read-error";
			
		}
		
		int lineSu = dto.getContent().split("\r\n").length;
		
		dto.setContent(dto.getContent().replaceAll("\r\n","<br/>"));
		
		Map<String, Object> hMap = new HashMap<>();
		//미리 빼놓은 searchKey 사용
		hMap.put("searchKey", searchKey);
		hMap.put("searchValue", searchValue);
		hMap.put("groupNum", dto.getGroupNum());
		hMap.put("orderNo", dto.getOrderNo());
		
		BoardDTO preDTO = (BoardDTO)dao.getReadData("bbs.preReadData",hMap);
		int preBoardNum = 0;
		String preSubject = "";
		if(preDTO!=null) {
			preBoardNum = preDTO.getBoardNum();
			preSubject = preDTO.getSubject();
		}
		
		BoardDTO nextDTO = (BoardDTO)dao.getReadData("bbs.nextReadData",hMap);
		int nextBoardNum = 0;
		String nextSubject = "";
		if(nextDTO!=null) {
			nextBoardNum = nextDTO.getBoardNum();
			nextSubject = nextDTO.getSubject();
		}
		
		String params = "pageNum=" + pageNum;
		if(!searchValue.equals("")) {
			params += "&searchKey=" + searchKey;
			params += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			
		}
		
		request.setAttribute("preBoardNum", preBoardNum);
		request.setAttribute("preSubject", preSubject);
		request.setAttribute("nextBoardNum", nextBoardNum);
		request.setAttribute("nextSubject", nextSubject);
		
		request.setAttribute("params", params);
		request.setAttribute("lineSu", lineSu);
		request.setAttribute("pageNum", pageNum);
		
		
		return SUCCESS;
	}
	
	public String updated() throws Exception{
		
		//게시물 수정화면
		HttpServletRequest request = ServletActionContext.getRequest();
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		if(dto.getMode() == null || dto.getMode().equals("")) {
			
			dto = (BoardDTO)dao.getReadData("bbs.readData", dto.getBoardNum());
			
			if(dto == null) {
				
				return "read-error";
			}
			
			request.setAttribute("mode", "update");
			request.setAttribute("pageNum", dto.getPageNum());
			
			return INPUT;
		}
		
		//게시글 수정
		dao.updateData("bbs.updateData", dto);
		
		return SUCCESS;
		
	}
	
	public String reply() throws Exception{
		
		//답변화면
		HttpServletRequest request = ServletActionContext.getRequest();
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		if(dto == null || dto.getMode() == null || dto.getMode().equals("")) {
			
			//부모의 데이터 읽어오기
			dto = (BoardDTO)dao.getReadData("bbs.readData", dto.getBoardNum());
			
			if(dto == null) {
				
				return "read-error";
			}
			
			String temp = "\r\n\r\n-------------------------------------------\r\n\r\n";
			
			temp += "[답변]\r\n";
			
			//부모 데이터를 변경해서 내 데이터로 created.jsp에 출력
			dto.setSubject("[답변]" + dto.getSubject());
			dto.setContent(dto.getContent() + temp);
			dto.setName("");
			dto.setEmail("");
			dto.setPwd("");
			
			request.setAttribute("mode", "reply");
			request.setAttribute("pageNum", dto.getPageNum());
			
			return INPUT;
		}
		
		//답변입력
		//orderNo 수정
		Map<String, Object> hMap = new HashMap<>();
		hMap.put("groupNum", dto.getGroupNum());//부모의 groupNum
		hMap.put("orderNo", dto.getOrderNo());//부모의 orderNo
		
		//위에 있는 orderNo보다 큰 data들을 다 업데이트 시켜줌
		dao.updateData("bbs.orderNoUpdate", hMap);
		
		//입력
		int maxBoardNum = dao.getIntValue("bbs.maxBoardNum");
		
		dto.setBoardNum(maxBoardNum + 1);
		dto.setIpAddr(request.getRemoteAddr());//안쓰면 부모의 ip가 client에 들어감
		dto.setDepth(dto.getDepth() + 1); //들여쓰기
		dto.setOrderNo(dto.getOrderNo() + 1); //현재 입력되는 데이터의 orderNo
		
		dao.insertData("bbs.insertData", dto);
		
		return SUCCESS;
	}
	
	public String deleted() throws Exception{
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		dao.deleteData("bbs.deleteData", dto.getBoardNum());
		
		return SUCCESS;
	}
	
}
