package com.sool;

public class CartDTO {
	private String name;	//怨쇱옄紐�
	private int price;		//媛�寃�
	private int cnt;		//�닔�웾
	
	public CartDTO() {}

	public CartDTO(String name, int price, int cnt) {
		super();
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	
}