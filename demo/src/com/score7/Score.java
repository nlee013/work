package com.score7;

import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

//사용자한테 data 받는 곳 = receive data from user
public class Score {
	
	Scanner sc = new Scanner(System.in);
	ScoreDAO dao = new ScoreDAO();
	
	//입력(사용자한테 데이터를 입력받는 곳)
	public void insert() {
		
		try {
			//받은 학번 데이터를 dto에 넣을 것
			//dto 객체 생성
			ScoreDTO dto = new ScoreDTO();//그릇 생성
			
			System.out.println("학번?");//111
			dto.setHak(sc.next());
			
			System.out.println("이름?");//suzi
			dto.setName(sc.next());
			
			System.out.println("국어?");
			dto.setKor(sc.nextInt());
			
			System.out.println("영어?");
			dto.setKor(sc.nextInt());
			
			System.out.println("수학?");
			dto.setKor(sc.nextInt());
			
			int result = dao.insertData(dto);
			
			if(result != 0) {
				
				System.out.println("추가 성공!!");
				
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

	//수정.반환값 없음
	public void update() {
		
		ScoreDTO dto = new ScoreDTO();
		
		try {
			
			System.out.print("수정할 학번?");
			dto.setHak(sc.next());
			
			System.out.print("국어?");
			dto.setKor(sc.nextInt());
			
			System.out.print("영어?");
			dto.setEng(sc.nextInt());
			
			System.out.println("수학?");
			dto.setMat(sc.nextInt());
			
			int result = dao.updateData(dto);//dao는 맨 위에 객체 생성해두었음
			
			if(result != 0) {
				System.out.println("수정 성공!!");
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	//삭제
	public void delete() {
		
		String hak;
		
		try {
			System.out.print("삭제할 학번?");
			hak = sc.next();
			
			int result = dao.deleteData(hak);
			
			if(result != 0) {
				System.out.println("삭제 성공!!");
				
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	//전체 출력
	public void selectAll() {
		
		List<ScoreDTO> lists = dao.getList();
		
		Iterator<ScoreDTO> it = lists.iterator();
		
		while(it.hasNext()) {
			
			ScoreDTO dto = it.next();
			System.out.println(dto.toString());
			
		}
	}
	
	//이름검색
	public void searchName() {
		
		String name;
		
		try {
			
			System.out.println("검색할 이름?");
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
