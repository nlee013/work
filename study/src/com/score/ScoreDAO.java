package com.score;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ScoreDAO {
	
	//반드시 작성해야될 것은 DB 정보
	
	private Connection conn;
	
	public ScoreDAO(Connection conn) {
		
		this.conn = conn;
	}
	
	//입력
	public int insertData(ScoreDTO dto) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "insert into score(hak, name, kor, eng, mat) ";
			sql += "values (?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getHak());
			pstmt.setString(2, dto.getName());
			pstmt.setInt(3, dto.getKor());
			pstmt.setInt(4, dto.getEng());
			pstmt.setInt(5, dto.getMat());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
}
