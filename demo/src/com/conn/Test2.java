package com.conn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.db.DBConn;

//statement ���� 3����
//Statement, PreparedStatement(���� ���̾�), CallableStatement

public class Test2 {

	public static void main(String[] args) {
		
		Connection conn = DBConn.getConnection();
		
		//db ���� ���
		//1.DriverManager�� Connection����
		//2.Connection�� Statement�� ����(sql ������ �����ϴ� �������̽�)
		//3.statement�� query�� ����
		
     if(conn == null) {
    	 
    	 System.out.println("�����ͺ��̽� ���� ����!!");
    	 System.exit(0);
     }
     
     //�ܺο� �����ϱ� ������ try�� ����ó���ϸ� ����
     try {
		
    	 Statement stmt = conn.createStatement();
    	 String sql;
    	 
    	 /*//insert
    	 //� column���� �����ϱ� ���ؼ� ȸ�翡�� ���ش�.
    	 sql = "insert into score (hak, name, kor, eng, mat)";
    	 //���߿� �ڵ��� ������� ��� ���� ����
    	 sql += "values('222', '���γ�', 40, 80, 70)";
    	 
    	 //sql squery�� �ش�
    	 int result = stmt.executeUpdate(sql);
    	 
    	 if(result == 1) {
    		 System.out.println("�߰� ����!!");
    	 }*/
    	 
    	 /*//update
    	 sql = "update score set name = '������', kor = 100, eng = 100, mat = 100";
    	 sql += "where hak = '111'";
    	 
    	 int result = stmt.executeUpdate(sql);
    	 
    	 if(result == 1) {
    		 System.out.println("���� ����!!");
    	 }*/
    	 
    	 /*//delete
    	 sql = "delete score where hak = 222";
    	 
    	 //select�� executeQuery. insert, update, delete(dml)�� �� executeUpdate
    	 int result = stmt.executeUpdate(sql);//���� �� �� sql������
    	 
    	 if(result == 1) {
    		 System.out.println("���� ����!!");
    	 }*/
    	 
    	 //select:�ʿ��� ���� �ϳ��� ����.
    	 //db���� ��û�Ѵ� : table�� ���� �� �ִ� �׸��� �غ��ؾ߉�
    	 //�ڹٿ���  ResultSet�̶�� interface ��� �׸���
    	 
    	//select
    	 ResultSet rs = null; //���߿� �����ٰ� �� ���̴�.
    	 
    	 sql = "select hak, name, kor, eng, mat from score";
    	 
    	 rs = stmt.executeQuery(sql);
    	 //select������ �ƴ϶� ResultSet ������ executeQuery�� �ڵ����� ����(ctrl+space)
    	 
    	 //cmd â�� ����
    	 //insert into score values('222', '�����', 66, 77, 88);
    	 
    	 //��� �׸�
    	 String hak, name;
    	 int kor, eng, mat;
    	 
    	 //������ ������ �� ���� while��
    	 while(rs.next()) {//�����Ͱ� ���������� �ݺ��ض�
    		 
    		 hak = rs.getString("hak"); //column��
    		 name = rs.getString(2);//�Ϸù�ȣ.�ι�°�� �����Ͷ�.ȸ�翡���� �÷�������
    		 kor = rs.getInt("kor");
    		 eng = rs.getInt(4);
    		 mat = rs.getInt("mat");
    		 
    		 System.out.printf("%5s %6s %4d %4d %4d\n",
    				 			hak, name, kor, eng, mat); 
    	 }
    	 //��׵��� �ȴݾ��ָ� �� �� ���� ������ ���߿� ��Ÿ��������
    	 //��� close();������ ���� �������
    	 rs.close();
    	 stmt.close();
    	 
    	 
	} catch (Exception e) {
		// TODO: handle exception
	}
     
     DBConn.close();//db�� �׻� ��������� �ݾ���߉�
	}

}
