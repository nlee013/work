package com.conn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.db.DBConn;

//statement 종류 3가지
//Statement, PreparedStatement(제일 많이씀), CallableStatement

public class Test2 {

	public static void main(String[] args) {
		
		Connection conn = DBConn.getConnection();
		
		//db 연결 방법
		//1.DriverManager가 Connection생성
		//2.Connection이 Statement를 생성(sql 구문을 실행하는 인터페이스)
		//3.statement가 query를 실행
		
     if(conn == null) {
    	 
    	 System.out.println("데이터베이스 연결 실패!!");
    	 System.exit(0);
     }
     
     //외부와 연결하기 때문에 try로 예외처리하면 좋음
     try {
		
    	 Statement stmt = conn.createStatement();
    	 String sql;
    	 
    	 /*//insert
    	 //어떤 column인지 구분하기 위해서 회사에선 써준다.
    	 sql = "insert into score (hak, name, kor, eng, mat)";
    	 //나중에 코딩이 길어짐을 대비에 따로 쓰기
    	 sql += "values('222', '유인나', 40, 80, 70)";
    	 
    	 //sql squery를 준다
    	 int result = stmt.executeUpdate(sql);
    	 
    	 if(result == 1) {
    		 System.out.println("추가 성공!!");
    	 }*/
    	 
    	 /*//update
    	 sql = "update score set name = '한지민', kor = 100, eng = 100, mat = 100";
    	 sql += "where hak = '111'";
    	 
    	 int result = stmt.executeUpdate(sql);
    	 
    	 if(result == 1) {
    		 System.out.println("수정 성공!!");
    	 }*/
    	 
    	 /*//delete
    	 sql = "delete score where hak = 222";
    	 
    	 //select는 executeQuery. insert, update, delete(dml)은 다 executeUpdate
    	 int result = stmt.executeUpdate(sql);//실행 할 때 sql가져옴
    	 
    	 if(result == 1) {
    		 System.out.println("삭제 성공!!");
    	 }*/
    	 
    	 //select:필요한 것이 하나더 있음.
    	 //db에게 요청한다 : table을 담을 수 있는 그릇을 준비해야됌
    	 //자바에서  ResultSet이라는 interface 라는 그릇임
    	 
    	//select
    	 ResultSet rs = null; //나중에 위에다가 쓸 것이다.
    	 
    	 sql = "select hak, name, kor, eng, mat from score";
    	 
    	 rs = stmt.executeQuery(sql);
    	 //select때문이 아니라 ResultSet 때문에 executeQuery가 자동으로 나옴(ctrl+space)
    	 
    	 //cmd 창에 들어가서
    	 //insert into score values('222', '배수지', 66, 77, 88);
    	 
    	 //담는 그릇
    	 String hak, name;
    	 int kor, eng, mat;
    	 
    	 //데이터 갯수를 모를 때는 while문
    	 while(rs.next()) {//데이터가 있을때까지 반복해라
    		 
    		 hak = rs.getString("hak"); //column명
    		 name = rs.getString(2);//일련번호.두번째값 가져와라.회사에서는 컬럼명사용함
    		 kor = rs.getInt("kor");
    		 eng = rs.getInt(4);
    		 mat = rs.getInt("mat");
    		 
    		 System.out.printf("%5s %6s %4d %4d %4d\n",
    				 			hak, name, kor, eng, mat); 
    	 }
    	 //얘네들은 안닫아주면 알 수 없는 오류가 나중에 나타날수있음
    	 //얘네 close();순서는 딱히 상관없음
    	 rs.close();
    	 stmt.close();
    	 
    	 
	} catch (Exception e) {
		// TODO: handle exception
	}
     
     DBConn.close();//db는 항상 사용했으면 닫아줘야됌
	}

}
