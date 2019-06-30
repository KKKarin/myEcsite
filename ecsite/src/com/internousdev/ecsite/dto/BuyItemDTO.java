package com.internousdev.ecsite.dto;

//DBから取り出した商品を格納
public class BuyItemDTO {

	public int id;
	public String itemName;
	public String itemPrice;

	//itemName=========================
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	//itemPrice=========================
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}

	//id=========================
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id =id;
	}

}
