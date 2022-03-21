package com.image;

import java.io.File;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.member.MemberDTO;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.util.FileManager;
import com.util.MyUtil;
import com.util.dao.CommonDAO;
import com.util.dao.CommonDAOImpl;

public class ImageAction extends ActionSupport implements Preparable,ModelDriven<ImageDTO>{

	private static final long serialVersionUID = 1L;
	
	private ImageDTO dto;
	private String message;
	

	public ImageDTO getDto() {
		return dto;
	}

	public void setDto(ImageDTO dto) {
		this.dto = dto;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public ImageDTO getModel() {
		return dto;
	}

	@Override
	public void prepare() throws Exception {
		dto = new ImageDTO();
	}
	
	//����Ʈ
	public String list() throws Exception{
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		MyUtil myUtil = new MyUtil();
		
		String cp = request.getContextPath();
		
		
		//�ϳ��� �������� ǥ���� ������ ����
		int numPerPage = 9;
		
		//��ü ������ ����
		int totalPage = 0;
		
		int totalDataCount = 0;

		//�Ѿ�� ������ ��ȣ
		String pageNum = request.getParameter("pageNum");
		
		int currentPage = 1;
		
		if(pageNum!=null&&!pageNum.equals("")) {
			currentPage = Integer.parseInt(pageNum);
		}
		
		totalDataCount = dao.getIntValue("img.dataCount");
		
		if(totalDataCount!=0) {
			
			totalPage = myUtil.getPageCount(numPerPage, totalDataCount);
		}

		//������ ������ ����¡ �߰�ó��
		if(currentPage >totalPage) {
			currentPage = totalPage;
		}
		
		Map<String, Object> hMap = new HashMap<String, Object>();
		
		//������ �������� ���۰� ��
		int start = (currentPage-1)*numPerPage+1;
		int end = currentPage*numPerPage;
		
		hMap.put("start", start);
		hMap.put("end", end);
		
		List<Object> lists = (List<Object>)dao.getListData("img.listData", hMap);
		
		//��ȣ ������
		Iterator<Object> it = lists.iterator();
		
		int listNum,n=0;
		
		String str;
		
		while(it.hasNext()) {
			
			//�Խù� ��ȣ ����
			ImageDTO dto = (ImageDTO)it.next();
			
			listNum = totalDataCount - (start + n - 1); //�Խ��� ��ȣ = ��ü������ ����-(����+n-1)
			
			dto.setListNum(listNum);
			
			n++;
			
			//���� �ٿ�ε� ���
			
			str = cp + "/img/download.action&num=" + dto.getNum();
			
			dto.setUrlFile(str);
			
		}
		
		//����¡ ó��
		String urlList = cp + "/img/list.action";
		
		//�̹��� ���ϰ��
		
		String imagePath = cp + "/pds/data";
			
		request.setAttribute("imagePath", imagePath);
		request.setAttribute("lists", lists);
		request.setAttribute("totalDataCount", totalDataCount);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("pageIndexList", myUtil.pageIndexList(currentPage, totalPage, urlList));
		
		return SUCCESS;
		
		
	}
	
	public String write() throws Exception {
		
		
		if(dto==null||dto.getMode()==null||dto.getMode().equals("")) {
			return INPUT;
		}
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		HttpSession session = request.getSession();
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		String root = session.getServletContext().getRealPath("/");

		String savePath = root + "pds" + File.separator + "data";


		//���Ͼ��ε�
		String saveFileName = FileManager.doFileUpload(dto.getUpload(), dto.getUploadFileName(),savePath);

		//�������� DB�� �ֱ�
		if(saveFileName!=null) {

			int maxNum = dao.getIntValue("img.maxNum");

			dto.setNum(maxNum + 1);
			dto.setSaveFileName(saveFileName);
			dto.setOriginalFileName(URLEncoder.encode(dto.getUploadFileName(), "UTF-8"));

			//���ǿ��� ���̵� �޾ƿ���
			MemberDTO ldto = (MemberDTO)session.getAttribute("MemberDTO");
			
			String userId = ldto.getUserId();
			
			dto.setUserId(userId);
			
			dao.insertData("img.insertData", dto);
		}
		return SUCCESS;
		
		
		
	}
	
	public String delete() throws Exception{
		
		CommonDAO dao = CommonDAOImpl.getInstance();
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		HttpSession session = request.getSession();
		
		String root = session.getServletContext().getRealPath("/");

		String savePath = root + "pds" + File.separator + "data";
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		//list���� ���� ���̵� �ޱ�
		String userId = request.getParameter("userId");
		
		Map<String, Object> hMap = new HashMap<String,Object>();
		
		hMap.put("num", num);
		hMap.put("userId", userId);
		
		//������ ���� ������ �ޱ�
		ImageDTO dto = (ImageDTO)dao.getReadData("img.readDeleteData", hMap);
		
		if(dto==null) {
			
			request.setAttribute("message", "�ۼ��ڸ� ���� �� �� �ֽ��ϴ�.");
			
			return "fail";
		}
		
		String saveFileName = dto.getSaveFileName();
		
		//���ϻ���
		FileManager.doFileDelete(saveFileName, savePath);
	
		//DB����
		dao.deleteData("img.deleteData", hMap);
		
		return SUCCESS;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
