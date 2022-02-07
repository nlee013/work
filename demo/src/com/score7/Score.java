package com.score7;

import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

//��������� data �޴� �� = receive data from user
public class Score {
	
	Scanner sc = new Scanner(System.in);
	ScoreDAO dao = new ScoreDAO();
	
	//�Է�(��������� �����͸� �Է¹޴� ��)
	public void insert() {
		
		try {
			//���� �й� �����͸� dto�� ���� ��
			//dto ��ü ����
			ScoreDTO dto = new ScoreDTO();//�׸� ����
			
			System.out.println("�й�?");//111
			dto.setHak(sc.next());
			
			System.out.println("�̸�?");//suzi
			dto.setName(sc.next());
			
			System.out.println("����?");
			dto.setKor(sc.nextInt());
			
			System.out.println("����?");
			dto.setKor(sc.nextInt());
			
			System.out.println("����?");
			dto.setKor(sc.nextInt());
			
			int result = dao.insertData(dto);
			
			if(result != 0) {
				
				System.out.println("�߰� ����!!");
				
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

	//����.��ȯ�� ����
	public void update() {
		
		ScoreDTO dto = new ScoreDTO();
		
		try {
			
			System.out.print("������ �й�?");
			dto.setHak(sc.next());
			
			System.out.print("����?");
			dto.setKor(sc.nextInt());
			
			System.out.print("����?");
			dto.setEng(sc.nextInt());
			
			System.out.println("����?");
			dto.setMat(sc.nextInt());
			
			int result = dao.updateData(dto);//dao�� �� ���� ��ü �����صξ���
			
			if(result != 0) {
				System.out.println("���� ����!!");
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	//����
	public void delete() {
		
		String hak;
		
		try {
			System.out.print("������ �й�?");
			hak = sc.next();
			
			int result = dao.deleteData(hak);
			
			if(result != 0) {
				System.out.println("���� ����!!");
				
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	//��ü ���
	public void selectAll() {
		
		List<ScoreDTO> lists = dao.getList();
		
		Iterator<ScoreDTO> it = lists.iterator();
		
		while(it.hasNext()) {
			
			ScoreDTO dto = it.next();
			System.out.println(dto.toString());
			
		}
	}
	
	//�̸��˻�
	public void searchName() {
		
		String name;
		
		try {
			
			System.out.println("�˻��� �̸�?");
			name = sc.next();
			
			List<ScoreDTO> lists = dao.getList(name);
			
			Iterator<ScoreDTO> it = lists.iterator();
			
			while(it.hasNext()) {
				
				ScoreDTO dto = it.next();
				System.out.println(dto.toString());
				
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
}
