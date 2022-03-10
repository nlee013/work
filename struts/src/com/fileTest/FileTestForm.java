package com.fileTest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

public class FileTestForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	
	//DB에 있는 Colum정보. Struts에 넣을 반드시 필요한 정보.
	private int num;
	private String subject;
	private String saveFileName;
	private String originalFileName;

	//Struts에 업로드시켜주는 FormFile
	private FormFile upload;//이름 똑같이 써준다 upload로.
	
	//내가 만듦. 사용자 정의
	private int listNum;//일련벊 재정렬
	private String urlFile;//파일 다운로드 경로
	
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
	public String getSaveFileName() {
		return saveFileName;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public FormFile getUpload() {
		return upload;
	}
	public void setUpload(FormFile upload) {
		this.upload = upload;
	}
	public int getListNum() {
		return listNum;
	}
	public void setListNum(int listNum) {
		this.listNum = listNum;
	}
	public String getUrlFile() {
		return urlFile;
	}
	public void setUrlFile(String urlFile) {
		this.urlFile = urlFile;
	}
	
}
