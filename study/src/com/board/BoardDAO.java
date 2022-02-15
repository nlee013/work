package com.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {

	private Connection conn;
	
	public BoardDAO(Connection conn) {
		
		this.conn = conn;//������ ����?
	}
	
	//insert���� num�� �ִ밪�� ���� �ʿ���
	public int getMaxNume() {
		
		int maxNum = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(num), 0) from board";
			//null++����� �������� �Ѿ..(?)
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				//"nvl(max(num)" ���� �Ļ��÷��� ���� ����
				//(���� �������� ���ϴϱ�)
				//�׷� ��� ���ڷ� �Ʒ�ó�� ���ָ� ��
				maxNum = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return maxNum;
	}
	
	//�Է�
	public int insertData(BoardDTO dto) {
		
		int result = 0;
	
		PreparedStatement pstmt = null;
		
		String sql;
		
		try {
			
			sql = "insert into board(num, name, pwd, email, subject, ";
			sql += "content, ipAddr, hitCount, created) ";
			sql += "values (?, ? ,? ,? ,? ,? ,?, 0, sysdate)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getSubject());
			pstmt.setString(6, dto.getContent());
			pstmt.setString(7, dto.getIpAddr());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	//��ü ������
	public List<BoardDTO> getlists(){
		
		List<BoardDTO> lists = new ArrayList<BoardDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql;
		
		try {
			
			/*
			select*from(
			select rownum rnum, data.*from(
			select num, name, subject from board order by num desc) data)
			where rnum>=1 and rnum<=3;
			*/
			
			sql = "select num, name, subject, hitCount, ";
			sql += "to_char(created, 'YYY-MM-DD') created ";
			sql += "from board order by num desc";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			//������ ����� �𸣴ϱ� while������ ������
			while(rs.next()) {
				
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setSubject(rs.getString("subject"));
				dto.setHitCount(rs.getInt("hitCount"));
				dto.setCreated(rs.getString("created"));
				
				lists.add(dto);
			}
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;
	}
	
	
}
