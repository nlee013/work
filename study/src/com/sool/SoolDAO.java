package com.sool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SoolDAO {

	private Connection conn = null;
	
	public SoolDAO(Connection conn) {
		
		this.conn = conn;
		
	}
	
	public int getMaxNum() {

		int maxNum = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select nvl(max(num), 0) from soolimage";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				maxNum = rs.getInt(1);
			}

			rs.close();
			pstmt.close();


		} catch (Exception e) {
			System.out.println(e.toString());
		}


		return maxNum;
	}
	
	public int getDataCount() {

		int totalCount = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			// key는 무조건 값이 있기때문에 + 연산자로 만들어주고
			// ?는 값이 없어도 되는 문장이 되기 때문에 key 자리에 ?로 사용하면 에러가 발생
			// 다만 str의 경우 null 값이 와도 상관 없기 때문에 ? 를 사용해도 무관

			sql = "select nvl(count(*), 0) from soolimage";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				totalCount = rs.getInt(1);
			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return totalCount;
	}
	
	public int insertData(SoolDTO dto) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql  = "insert into soolimage (prod_no, prod_name, prod_price, prod_quan, num, subject, saveFileName) ";
			sql += "values (?, ?, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getProd_no());
			pstmt.setString(2, dto.getProd_name());
			pstmt.setInt(3, dto.getProd_price());
			pstmt.setInt(4, dto.getProd_quan());
			pstmt.setInt(5, dto.getNum());
			pstmt.setString(6, dto.getSubject());
			pstmt.setString(7, dto.getSaveFileName());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}
	
	public List<SoolDTO> getLists(int start, int end) {

		List<SoolDTO> lists = new ArrayList<SoolDTO>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select * from ("
				+ "select rownum rnum, data.* from ("
				+ "select prod_no, prod_name, prod_price, prod_quan, num, subject, saveFileName "
				+ "from soolimage order by num desc) data) "
				+ "where rnum >=? and rnum <=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs = pstmt.executeQuery();

			while(rs.next()) {

				SoolDTO dto = new SoolDTO();
				
				dto.setProd_no(rs.getInt("prod_no"));
				dto.setProd_name(rs.getString("prod_name"));
				dto.setProd_price(rs.getInt("prod_price"));
				dto.setProd_quan(rs.getInt("prod_quan"));
				
				dto.setNum(rs.getInt("num"));
				dto.setSubject(rs.getString("subject"));
				dto.setSaveFileName(rs.getString("saveFileName"));

				lists.add(dto);
			}

			rs.close();
			pstmt.close();


		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return lists;
	}
	
	public SoolDTO getReadData(int num) {

		SoolDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql  = "select prod_no, prod_name, prod_price, prod_quan, num, subject, saveFileName ";
			sql += "from soolimage where num=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			rs = pstmt.executeQuery();

			if(rs.next()) {

				dto = new SoolDTO();
				
				dto.setProd_no(rs.getInt("prod_no"));
				dto.setProd_name(rs.getString("prod_name"));
				dto.setProd_price(rs.getInt("prod_price"));
				dto.setProd_quan(rs.getInt("prod_quan"));
				
				dto.setNum(rs.getInt("num"));
				dto.setSubject(rs.getString("subject"));
				dto.setSaveFileName(rs.getString("saveFileName"));
			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return dto;
	}

	public int deleteData(int num) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "delete soolimage where num=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}
	
}
