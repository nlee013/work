package com.naver2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Naver2DAO {

	private Connection conn;

	public Naver2DAO(Connection conn) {
		this.conn = conn;
	}

	// 입력
	public int insertData(Naver2DTO dto) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		try {

			sql = "insert into NaverUser(id,pwd,name,year,month,day,gender,email,phone1,phone2) ";
			sql += "values (?,?,?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getId());
			pstmt.setInt(2, dto.getPwd());
			pstmt.setString(3, dto.getName());
			pstmt.setInt(4, dto.getYear());
			pstmt.setInt(5, dto.getMonth());
			pstmt.setInt(6, dto.getDay());
			pstmt.setString(7, dto.getGender());
			pstmt.setString(8, dto.getEmail());
			pstmt.setString(9, dto.getPhone1());
			pstmt.setInt(10, dto.getPhone2());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;

	}
	
	//전체 데이터
	public List<Naver2DTO> getLists(){
		
		List<Naver2DTO> lists = new ArrayList<Naver2DTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
	
		try {
			
			sql = "Select id,pwd,name,year,month,day,gender,email,phone1,phone2 ";
			sql+= "from NaverUser";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Naver2DTO dto = new Naver2DTO();
				
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getInt("pwd"));
				dto.setName(rs.getString("name"));
				
				dto.setYear(rs.getInt("year"));
				dto.setMonth(rs.getInt("month"));
				dto.setDay(rs.getInt("day"));
				
				dto.setGender(rs.getString("Gender"));
				dto.setEmail(rs.getString("email"));
				
				dto.setPhone1(rs.getString("phone1"));
				dto.setPhone2(rs.getInt("phone2"));
				
				lists.add(dto);
				
			}
			
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		} 
	
		return lists;
			
	}
	
	//수정할 데이터 가져오기
	public Naver2DTO getReadData(String id) {
		
		Naver2DTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select id,pwd,name,year,month,day,gender,email,phone1,phone2 from NaverUser ";
			sql+= "where id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto = new Naver2DTO();
				
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getInt("pwd"));
				dto.setName(rs.getString("name"));
				
				dto.setYear(rs.getInt("year"));
				dto.setMonth(rs.getInt("month"));
				dto.setDay(rs.getInt("day"));
				
				dto.setGender(rs.getString("Gender"));
				dto.setEmail(rs.getString("email"));
				
				dto.setPhone1(rs.getString("phone1"));
				dto.setPhone2(rs.getInt("phone2"));
		
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
		
	}
	
	// 수정
		public int updateData(Naver2DTO dto) {

			int result = 0;
			PreparedStatement pstmt = null;
			String sql;
			try {

				sql = "update NaverUser set pwd=?,name=?, year=?, month=?, day=?, gender=?, email=?,";
				sql += "phone1=?,phone2=? where id=?";

				pstmt = conn.prepareStatement(sql);

				
				pstmt.setInt(1, dto.getPwd());
				pstmt.setString(2, dto.getName());
				pstmt.setString(3, dto.getEmail());
				
				pstmt.setInt(4, dto.getYear());
				pstmt.setInt(5, dto.getMonth());
				pstmt.setInt(6, dto.getDay());
				pstmt.setString(8, dto.getPhone1());
				pstmt.setInt(9, dto.getPhone2());
				
				pstmt.setString(10, dto.getId());
				
				result = pstmt.executeUpdate();

				pstmt.close();

			} catch (Exception e) {
				System.out.println(e.toString());
			}

			return result;

		}
		
		//삭제
		public int deleteData(String id) {
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql;
			 
			try {
				
				sql = "delete NaverUser where id=?";
				
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
