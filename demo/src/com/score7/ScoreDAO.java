package com.score7;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.db.DBConn;
import oracle.jdbc.OracleTypes;

//Data Access Object : DB에 연동해서 query를 실행하는 곳
public class ScoreDAO {
	
	//data 입력
	//나중엔 int 안쓰지만 여기서는 써봄
	public int insertData(ScoreDTO dto) {//dto를 매개변수를 받을 준비해야됌
		//이 dto가 insertData()에 넣어감.
		
		int result = 0;
		
		//db연결
		Connection conn = DBConn.getConnection();
		
		//prepared statement사용
		PreparedStatement pstmt = null;
		String sql;//sql을 저장할 변수
		
		try {
			
			/*
			//statement 방식
			sql = "insert into score(hak, name, kor, eng, mat) ";
			sql += "values('" + dto.getHak() + "', '";
			sql += dto.getName() + "',";
			sql += dto.getMat() + "',";
			sql += dto.getEng() + ")";
			*/
		
			//prepared 방식
			sql = "insert into score(hak, name, kor, eng, mat) ";
			sql += "values (?,?,?,?,?)";//느낌표 안됌.오로지 물음표만 가능(문법임)
			
			pstmt = conn.prepareStatement(sql);//미리 검사 후 pstmt에 sql을 넣어둔다
			
			pstmt.setString(1, dto.getHak());//첫번째 ?자리로 들어감
			pstmt.setString(2, dto.getName());
			pstmt.setInt(3, dto.getKor());
			pstmt.setInt(4, dto.getEng());
			pstmt.setInt(5, dto.getMat());
			
			//실행
			result = pstmt.executeUpdate();//여기는 sql이 없음
			
			pstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
	
	//수정
	public int updateData(ScoreDTO dto) { //반환값 있음
		
		int result = 0;
		
		Connection conn = DBConn.getConnection();
		PreparedStatement pstmt = null;
		
		String sql;
		
		try {
			
			sql = "update score set kor = ?, eng = ?, mat = ? where hak = ?";
			//물음표로 표시하는 것이 prepared Statement
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getKor());
			pstmt.setInt(2, dto.getEng());
			pstmt.setInt(3, dto.getMat());
			pstmt.setString(4, dto.getHak());
			
			result = pstmt.executeUpdate();//0아니면 1값
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	//삭제
	public int deleteData(String hak) {
		
		int result = 0;
		
		Connection conn = DBConn.getConnection();
		PreparedStatement pstmt = null;
		
		String sql;
		
		try {
			sql = "delete score where hak = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, hak);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	//전체 출력
	public List<ScoreDTO> getList(){
		
		List<ScoreDTO> lists = new ArrayList<ScoreDTO>();
		Connection conn = DBConn.getConnection();
		CallableStatement cstmt = null;
		ResultSet rs = null; // select한 데이터를 담아놓는 그릇 인터페이스
		
		String sql;
		
		try {
			
			sql = "{call selectAllScore(?)}";
			
			cstmt = conn.prepareCall(sql);
			
			//out 파라미터의 자료형을 설정
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);
			
			//프로시져 실행
			cstmt.executeUpdate();
			
			// out 파라미터의 값을 돌려 받기
			rs = (ResultSet) cstmt.getObject(1);
			
			while(rs.next()) {
				
				ScoreDTO dto = new ScoreDTO(); // 반복문 안에 만들어져야 함 데이터가 5개면 5번 만들어지도록
				
				dto.setHak(rs.getString("hak"));
				dto.setName(rs.getString(2));// name
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMat(rs.getInt("mat"));
				dto.setTot(rs.getInt("tot"));
				dto.setAve(rs.getInt("ave"));
				dto.setRank(rs.getInt("rank"));
	
				lists.add(dto);
				
			}
			
			rs.close();
			cstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	}

	//이름검색
	public List<ScoreDTO> getList(String name){//overloading
		
		List<ScoreDTO> lists = new ArrayList<ScoreDTO>();
		Connection conn = DBConn.getConnection();
		CallableStatement cstmt = null;
		ResultSet rs = null; // select한 데이터를 담아놓는 그릇 인터페이스

		String sql;

		try {

			sql = "{call selectNameScore(?,?)}";

			cstmt = conn.prepareCall(sql);

			// out 파라미터 자료형 설정
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);

			// in 파라미터
			cstmt.setString(2, name);

			// 프로시저 실행
			cstmt.executeUpdate();

			// out파라미터 값 받기
			rs = (ResultSet) cstmt.getObject(1);

			while (rs.next()) {

				ScoreDTO dto = new ScoreDTO(); // 반복문 안에 만들어져야 함 데이터가 5개면 5번 만들어지도록

				dto.setHak(rs.getString("hak"));
				dto.setName(rs.getString(2));// name
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMat(rs.getInt("mat"));
				dto.setTot(rs.getInt("tot"));
				dto.setAve(rs.getInt("ave"));

				lists.add(dto);

			}

			rs.close();
			cstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return lists;
	}

	// 학번검색
	public ScoreDTO getHakList(String hak) {

		ScoreDTO dto = null; // 객체생성 안해도 된다. 없을 수 도 있음
		Connection conn = DBConn.getConnection();
		CallableStatement cstmt = null;
		ResultSet rs = null; // select한 데이터를 담아놓는 그릇 인터페이스

		String sql;

		try {

			sql = "{call selectHakScore(?,?)}";

			cstmt = conn.prepareCall(sql);

			// out 파라미터 자료형 설정
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);

			// in 파라미터
			cstmt.setString(2, hak);

			// 프로시저 실행
			cstmt.executeUpdate();

			// out파라미터 값 받기
			rs = (ResultSet) cstmt.getObject(1);

			if (rs.next()) {

				dto = new ScoreDTO(); // 반복문 안에 만들어져야 함 데이터가 5개면 5번 만들어지도록

				dto.setHak(rs.getString("hak"));
				dto.setName(rs.getString(2));// name
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMat(rs.getInt("mat"));
				dto.setTot(rs.getInt("tot"));
				dto.setAve(rs.getInt("ave"));

			}

			rs.close();
			cstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return dto;

	}
}
