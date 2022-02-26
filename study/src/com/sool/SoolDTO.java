package com.sool;

public class SoolDTO {

	private String prod_name;// 상품명
	private int prod_price;//가격
	private int prod_quan;//수량
	private int prod_no;//고유번호
	
	private int num;
	private String subject;
	private String saveFileName;

	public String getProd_name() {
		return prod_name;
	}


	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}


	public int getProd_price() {
		return prod_price;
	}


	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}


	public int getProd_quan() {
		return prod_quan;
	}


	public void setProd_quan(int prod_quan) {
		this.prod_quan = prod_quan;
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


	public String getSaveFileName() {
		return saveFileName;
	}


	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}


	public int getProd_no() {
		return prod_no;
	}


	public void setProd_no(int prod_no) {
		this.prod_no = prod_no;
	}
	
	

}
