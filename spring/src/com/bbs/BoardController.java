package com.bbs;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.org.apache.regexp.internal.recompile;
import com.util.MyUtil;
import com.util.dao.CommonDAO;

@Controller("bbs.boardController")
public class BoardController {

	@Resource(name="dao")
	private CommonDAO dao;
	
	@Resource(name="myUtil")
	private MyUtil myUtil;//= new MyUtil();�� ���� ����
	
	//---��ü ���� ��
	
	@RequestMapping(value="/bbs/created.action",
			method= {RequestMethod.GET, RequestMethod.POST})
	public String created(BoardCommand command, HttpServletRequest request)
		throws Exception{

		if(command == null || command.getMode() == null || command.getMode().equals("")) {
			
			request.setAttribute("mode", "insert");
			
			return "board/created";
		}
		
		//�׷��� ������(�Է½�Ű�� �ڵ��ۼ�)
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
		
		return "board/list";
	}
}
