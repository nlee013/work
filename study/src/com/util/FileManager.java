package com.util;

import java.io.File;

public class FileManager {

	public static void doFileDelete(String fileName, String path) {
		
		try {
			
			String filePath = path + File.separator + fileName;
			
			File f = new File(filePath);
			
			//拱府利 颇老 昏力
			if(f.exists()) {
				f.delete();
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	}
	
}
