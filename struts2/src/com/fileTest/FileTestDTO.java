package com.fileTest;

import java.io.File;

public class FileTestDTO {

	private int num;
	private String subject;
	
	private File upload;
	
	//위에서 정희한 upload의 FileName 문자를 붙여서 변수를 만들면
	//Struts2가 자동으로 파일의 이름을 넣어준다
	//uploadt + FileName
	private String uploadFileName;//이름 절대 바뀌면 안됨
	
	private String mode;

	private String pageNum;
	private int listNum;
	
	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public String getPageNum() {
		return pageNum;
	}

	public void setPageNum(String pageNum) {
		this.pageNum = pageNum;
	}

	public int getListNum() {
		return listNum;
	}

	public void setListNum(int listNum) {
		this.listNum = listNum;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	
	
}
