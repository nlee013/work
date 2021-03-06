package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConn {
	
	//db와 연결해주는 파이프라인
	
	private static Connection dbConn; 
	
	public static Connection getConnection() {
		
		if(dbConn==null) {
			
			//type4 최소 정보로 직접 db 연결
			//외부연결
			try {
				//String url = "jdbc:oracle:thin:@192.168.16.20:1521:xe";//학원 desktop
				String url = "jdbc:oracle:thin:@192.168.0.18:1521:xe";//laptop
				String user = "suzi";
				String pwd = "a123";
						
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				dbConn = DriverManager.getConnection(url, user, pwd);
				
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		
		return dbConn;
	}
	
	
	public static void close() {
		
		if(dbConn!=null) {
			
			try {
				if(!dbConn.isClosed()) {
					dbConn.close();
				}
			} catch (Exception e) {
				System.out.println(e.toString());
			} 
			
			
		}
		dbConn=null; //남아있는 찌꺼기 제거하기위해
	}

}
