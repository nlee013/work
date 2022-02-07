package com.score7;

import java.util.Scanner;

public class ScoreMain {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		Score ob = new Score();
		
		int ch;//choice
		
		while(true) {
			
			do {
				
				System.out.println("1.추가 2.수정 3.삭제 4.전체출력 5.이름검색 6.종료: ");
				
				ch = sc.nextInt();
			}while(ch < 1 || ch > 6);
			
			switch(ch) {
			
			case 1: 
				ob.insert(); break;
			
			case 2: 
				ob.update(); break;
			
			case 3: 
				ob.delete(); break;
				
			case 4: 
				ob.selectAll(); break;
				
			case 5: 
				ob.searchName(); break;
				
			default:
				System.out.println("The End");
				System.exit(0);
			}
				
		}

	}

}
