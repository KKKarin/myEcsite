package com.internousdev.ecsite.dto;

import java.util.ArrayList;
import java.util.List;

public class ItemListDTO {

	private int itemId;
	private String itemName;
	private int itemPrice;
	private int itemStock;
	private String itemTime;
	List<ItemListDTO> deleteList = new ArrayList<ItemListDTO>();

	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public int getItemStock() {
		return itemStock;
	}
	public void setItemStock(int itemStock) {
		this.itemStock = itemStock;
	}

	public String getItemTime() {
		return itemTime;
	}
	public void setItemTime(String itemTime) {
		this.itemTime = itemTime;
	}

	public List<ItemListDTO> getDeleteList() {
		return deleteList;
	}
	public void setDeleteList(List<ItemListDTO> deleteList) {
		this.deleteList = deleteList;
	}


}