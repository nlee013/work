package com.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Calendar;

import javax.servlet.http.HttpServletResponse;

public class FileManager {
	
	//파일 업로드-2022.03.14
	public static String doFileUpload(File file, String originalFileName, String path) throws IOException {
		
		//반환값이 있는 이유는 a.txt에서 txt를 빼내고 새로운 이름을 만든다
		String newFileName = null;
		
		if(file == null) {
			
			return null;
		}
		//client가 업로도한 파일 이름
		
		if(originalFileName.equals("")) {
			
			return null;
		}
		
		//파일의 확장자 추출(abc.txt)
		//인수의 갯수가 하나면 점(.)에서 끝까지~
		String fileExt = originalFileName.substring(originalFileName.lastIndexOf("."));
		
		if(fileExt == null || fileExt.equals("")) {
			
			return null;
		}
		
		//서버에 저장할 새로운 파일 이름 생성
		newFileName = String.format("%1$tY%1$tm%1$td%1$tH%1$tM%1$tS", Calendar.getInstance());
		
		//뒤에 인수를 하나를 쓰고 calendar.getinstance()를 6개를 나눠서 사용할 때 1$사용. %뒤에 붙이기
		
		newFileName += System.nanoTime();//절대 중복값은 안나옴. 10의 -9승
		newFileName += fileExt;
		
		//파일 업로드 부분은 간단. formFile이 해주기 때문
		File f = new File(path);
		
		if(!f.exists()) {
			
			f.mkdirs();
		}
		
		//경로
		String fullFilePath = path + File.separator + newFileName;
		
		//파일 업로드----------------------------------------------------
		FileInputStream fis = new FileInputStream(file);
		
		//파일 내보내기
		FileOutputStream fos = new FileOutputStream(fullFilePath);
		
		int data = 0;
		
		byte[] buffer = new byte[1024];
		
		while((data = fis.read(buffer, 0, 1024)) != -1) {
			
			fos.write(buffer, 0, data);
			
		}
		//----------------------------------------------------------------
		fos.close();
		fis.close();		
		
		return newFileName;//이걸 반환해야지 originalFileName과 같이 넣어준다
	}
	
	
	//파일 다운로드
	public static boolean doFileDownload(HttpServletResponse response,
			String saveFileName, String originalFileName,String path) {
		
		try {
			
			String filePath = path + File.separator + saveFileName;
			
			if(originalFileName==null||originalFileName.equals("")) {
				originalFileName = saveFileName;				
			}
			
			//파일을 다운받아 클라이언트 컴에 저장할때 한글이름 깨짐 방지
			originalFileName = 
				new String(originalFileName.getBytes("euc-kr"),"ISO-8859-1");
			
			File f = new File(filePath);
			
			if(!f.exists()) {
				return false;
			}
			
			response.setContentType("application/octet-stream");
			response.setHeader("Content-disposition",
					"attachment;fileName=" + originalFileName);
			
			BufferedInputStream bis = 
					new BufferedInputStream(new FileInputStream(f));
					
			OutputStream out = response.getOutputStream();
			
			int data;
			byte[] bytes = new byte[4096];
			while((data=bis.read(bytes, 0, 4096))!=-1) {
				out.write(bytes,0,data);
			}
			
			out.flush();
			out.close();
			bis.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
			return false;
		}
		
		return true;
	}
		
	
	//파일 삭제
	public static void doFileDelete(String fileName, String path) {
		
		try {
			
			String filePath = path + File.separator + fileName;
			
			File f = new File(filePath);
			
			if(f.exists())
				f.delete(); //파일 삭제
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}	
	}
	

}
