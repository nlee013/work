package com.ibbs;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.iguest.GuestDTO;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.util.MyUtil;
import com.util.dao.CommonDAO;
import com.util.dao.CommonDAOImpl;

public class CommentAction extends ActionSupport
	implements Preparable, ModelDriven<CommentDTO>{

	private static final long serialVersionUID = 1L;
	
	public CommentDTO dto;
	
	@Override
	public CommentDTO getModel() {
		
		return dto;
	}

	@Override
	public void prepare() throws Exception {
		
		dto = new CommentDTO();
		
	}
	
	public String list() throws Exception{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		MyUtil myUtil = new MyUtil(); 
		
		int numPerPage = 3;
		int totalPage = 0;
		int totalDataCount = 0;
		
		String pageNum = request.getParameter("pageNum");
		
		int currentPage = 1;
		
		if(pageNum!=null && !pageNum.equals("")) {
			currentPage = Integer.parseInt(pageNum);
		}
		
		totalDataCount = dao.getIntValue("ibbs.dataCount");
		
		if(totalDataCount!=0) {
			totalPage = myUtil.getPageCount(numPerPage, totalDataCount);
		}
		
		if(currentPage>totalPage) {
			currentPage = totalPage;
		}
		
		Map<String, Object> hMap = new HashMap<String, Object>();
		
		int start = (currentPage-1)*numPerPage+1;
		int end = currentPage*numPerPage;
		
		hMap.put("start", start);
		hMap.put("end", end);
		
		List<Object> lists = dao.getListData("ibbs.listData", hMap);
		
		int listNum,n=0;
		
		Iterator<Object> it = lists.iterator();
		while(it.hasNext()) {
			
			GuestDTO vo = (GuestDTO)it.next();
			
			listNum = totalDataCount-(start+n-1);
			
			vo.setListNum(listNum);
			
			vo.setContent(vo.getContent().replaceAll("\n", "<br/>"));
			
			n++;
			
		}
		
		String pageIndexList = 
				myUtil.pageIndexList(currentPage, totalPage);
		
		request.setAttribute("lists", lists);
		request.setAttribute("pageIndexList", pageIndexList);
		request.setAttribute("totalDataCount", totalDataCount);
		request.setAttribute("pageNum", currentPage);
		
		return SUCCESS;		
		
	}
	
	
	public String created() throws Exception{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		int numMax = dao.getIntValue("ibbs.numMax");
		
		dto.setBoardNum(numMax + 1);
		dto.setIpAddr(request.getRemoteAddr());
		
		dao.insertData("ibbs.insertData", dto);
		
		return list();
		
	}
	

	public String deleted() throws Exception{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		dao.deleteData("ibbs.deleteData", num);
		
		return list();
		
	}
	
}
