package com.score7;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.db.DBConn;
import oracle.jdbc.OracleTypes;

//Data Access Object : DB�� �����ؼ� query�� �����ϴ� ��
public class ScoreDAO {
	
	//data �Է�
	//���߿� int �Ⱦ����� ���⼭�� �ẽ
	public int insertData(ScoreDTO dto) {//dto�� �Ű������� ���� �غ��ؾ߉�
		//�� dto�� insertData()�� �־.
		
		int result = 0;
		
		//db����
		Connection conn = DBConn.getConnection();
		
		//prepared statement���
		PreparedStatement pstmt = null;
		String sql;//sql�� ������ ����
		
		try {
			
			/*
			//statement ���
			sql = "insert into score(hak, name, kor, eng, mat) ";
			sql += "values('" + dto.getHak() + "', '";
			sql += dto.getName() + "',";
			sql += dto.getMat() + "',";
			sql += dto.getEng() + ")";
			*/
		
			//prepared ���
			sql = "insert into score(hak, name, kor, eng, mat) ";
			sql += "values (?,?,?,?,?)";//����ǥ �ȉ�.������ ����ǥ�� ����(������)
			
			pstmt = conn.prepareStatement(sql);//�̸� �˻� �� pstmt�� sql�� �־�д�
			
			pstmt.setString(1, dto.getHak());//ù��° ?�ڸ��� ��
			pstmt.setString(2, dto.getName());
			pstmt.setInt(3, dto.getKor());
			pstmt.setInt(4, dto.getEng());
			pstmt.setInt(5, dto.getMat());
			
			//����
			result = pstmt.executeUpdate();//����� sql�� ����
			
			pstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
	
	//����
	public int updateData(ScoreDTO dto) { //��ȯ�� ����
		
		int result = 0;
		
		Connection conn = DBConn.getConnection();
		PreparedStatement pstmt = null;
		
		String sql;
		
		try {
			
			sql = "update score set kor = ?, eng = ?, mat = ? where hak = ?";
			//����ǥ�� ǥ���ϴ� ���� prepared Statement
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getKor());
			pstmt.setInt(2, dto.getEng());
			pstmt.setInt(3, dto.getMat());
			pstmt.setString(4, dto.getHak());
			
			result = pstmt.executeUpdate();//0�ƴϸ� 1��
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	//����
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
	
	//��ü ���
	public List<ScoreDTO> getList(){
		
		List<ScoreDTO> lists = new ArrayList<ScoreDTO>();
		Connection conn = DBConn.getConnection();
		CallableStatement cstmt = null;
		ResultSet rs = null; // select�� �����͸� ��Ƴ��� �׸� �������̽�
		
		String sql;
		
		try {
			
			sql = "{call selectAllScore(?)}";
			
			cstmt = conn.prepareCall(sql);
			
			//out �Ķ������ �ڷ����� ����
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);
			
			//���ν��� ����
			cstmt.executeUpdate();
			
			// out �Ķ������ ���� ���� �ޱ�
			rs = (ResultSet) cstmt.getObject(1);
			
			while(rs.next()) {
				
				ScoreDTO dto = new ScoreDTO(); // �ݺ��� �ȿ� ��������� �� �����Ͱ� 5���� 5�� �����������
				
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

	//�̸��˻�
	public List<ScoreDTO> getList(String name){//overloading
		
		List<ScoreDTO> lists = new ArrayList<ScoreDTO>();
		Connection conn = DBConn.getConnection();
		CallableStatement cstmt = null;
		ResultSet rs = null; // select�� �����͸� ��Ƴ��� �׸� �������̽�

		String sql;

		try {

			sql = "{call selectNameScore(?,?)}";

			cstmt = conn.prepareCall(sql);

			// out �Ķ���� �ڷ��� ����
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);

			// in �Ķ����
			cstmt.setString(2, name);

			// ���ν��� ����
			cstmt.executeUpdate();

			// out�Ķ���� �� �ޱ�
			rs = (ResultSet) cstmt.getObject(1);

			while (rs.next()) {

				ScoreDTO dto = new ScoreDTO(); // �ݺ��� �ȿ� ��������� �� �����Ͱ� 5���� 5�� �����������

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

	// �й��˻�
	public ScoreDTO getHakList(String hak) {

		ScoreDTO dto = null; // ��ü���� ���ص� �ȴ�. ���� �� �� ����
		Connection conn = DBConn.getConnection();
		CallableStatement cstmt = null;
		ResultSet rs = null; // select�� �����͸� ��Ƴ��� �׸� �������̽�

		String sql;

		try {

			sql = "{call selectHakScore(?,?)}";

			cstmt = conn.prepareCall(sql);

			// out �Ķ���� �ڷ��� ����
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);

			// in �Ķ����
			cstmt.setString(2, hak);

			// ���ν��� ����
			cstmt.executeUpdate();

			// out�Ķ���� �� �ޱ�
			rs = (ResultSet) cstmt.getObject(1);

			if (rs.next()) {

				dto = new ScoreDTO(); // �ݺ��� �ȿ� ��������� �� �����Ͱ� 5���� 5�� �����������

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
