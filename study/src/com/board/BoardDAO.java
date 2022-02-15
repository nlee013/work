package com.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {

	private Connection conn;
	
	public BoardDAO(Connection conn) {
		
		this.conn = conn;//의존성 주의?
	}
	
	//insert에는 num의 최대값이 먼저 필요함
	public int getMaxNume() {
		
		int maxNum = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(num), 0) from board";
			//null++해줘야 다음으로 넘어감..(?)
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				//"nvl(max(num)" 같은 파생컬럼을 쓰지 못함
				//(실제 존재하지 못하니까)
				//그럴 경우 숫자로 아래처럼 써주면 됌
				maxNum = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return maxNum;
	}
	
	//입력
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
	
	//전체 데이터
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
			
			//데이터 몇개인지 모르니까 while문으로 돌리자
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
