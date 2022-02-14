package com.naver;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NaverDAO {

	private Connection conn;
	
	public NaverDAO(Connection conn) {
		
		this.conn = conn;
		
	}
	
	//입력
	public int insertData(NaverDTO dto) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "insert into naver(id, pwd, name, b_year, b_month, b_day, ";
			sql += "gender, email, mobile, mobile2) ";
			sql += "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getB_year());
			pstmt.setString(5, dto.getB_month());
			pstmt.setString(6, dto.getB_day());
			pstmt.setString(7, dto.getGender());
			pstmt.setString(8, dto.getEmail());
			pstmt.setString(9, dto.getMobile());
			pstmt.setString(10, dto.getMobile2());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
	
	//수정
	public int updateData(NaverDTO dto) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "update naver set pwd=?, name=?, b_year=?, b_month=?, b_day=?, ";
			sql += "gender=?, email=?, mobile=?, mobile2=? where id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getPwd());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getB_year());
			pstmt.setString(4, dto.getB_month());
			pstmt.setString(5, dto.getB_day());
			pstmt.setString(6, dto.getGender());
			pstmt.setString(7, dto.getEmail());
			pstmt.setString(8, dto.getMobile());
			pstmt.setString(9, dto.getMobile2());
			
			pstmt.setString(10, dto.getId());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
	//전체 데이터
	public List<NaverDTO> getLists(){
		
		List<NaverDTO> lists = new ArrayList<NaverDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select id, pwd, name, b_year, b_month, b_day, ";
			sql += "gender, email, mobile, mobile2 from naver";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				NaverDTO dto = new NaverDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setB_year(rs.getString("b_year"));
				dto.setB_month(rs.getString("b_month"));
				dto.setB_day(rs.getString("b_day"));
				dto.setGender(rs.getString("gender"));
				dto.setEmail(rs.getString("email"));
				dto.setMobile(rs.getString("mobile"));
				dto.setMobile2(rs.getString("mobile2"));
				
				lists.add(dto);
			}
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;
	}
	
	//데이터 읽어오기
	public NaverDTO getReadData(String id) {
		
		NaverDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select id, pwd, name, b_year, b_month, b_day, gender, email, mobile, mobile2 from naver where id = ? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto = new NaverDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setB_year(rs.getString("b_year"));
				dto.setB_month(rs.getString("b_month"));
				dto.setB_day(rs.getString("b_day"));
				dto.setGender(rs.getString("gender"));
				dto.setEmail(rs.getString("email"));
				dto.setMobile(rs.getString("mobile"));
				dto.setMobile2(rs.getString("mobile2"));
			}
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return dto;
		
	}
	
	//삭제
	public int deleteData(String id) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "delete naver where id=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
	
}
