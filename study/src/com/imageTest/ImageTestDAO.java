package com.imageTest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ImageTestDAO {

	private Connection conn = null;
	
	public ImageTestDAO(Connection conn) {
		
		this.conn = conn;
	}
	
	public int getMaxNum() {

		int maxNum = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select nvl(max(num), 0) from imageTest";

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

			sql = "select nvl(count(*), 0) from imageTest";

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
	
	public int insertData(ImageTestDTO dto) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "insert into imageTest (num, subject, saveFileName) values (?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getSaveFileName());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}
	
	public List<ImageTestDTO> getLists(int start, int end) {

		List<ImageTestDTO> lists = new ArrayList<ImageTestDTO>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select * from ("
				+ "select rownum rnum, data.* from ("
				+ "select num, subject, saveFileName "
				+ "from imageTest order by num desc) data) "
				+ "where rnum >=? and rnum <=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs = pstmt.executeQuery();

			while(rs.next()) {

				ImageTestDTO dto = new ImageTestDTO();

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
	
	public ImageTestDTO getReadData(int num) {

		ImageTestDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select num, subject, saveFileName from imageTest where num=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			rs = pstmt.executeQuery();

			if(rs.next()) {

				dto = new ImageTestDTO();

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
			sql = "delete imageTest where num=?";

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
