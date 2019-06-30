package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDeleteDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteConfirmAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private String deleteNum;
	private String deleteNumList;
	ItemListDeleteDAO dao = new ItemListDeleteDAO();
	List<ItemListDTO> deleteList = new ArrayList<ItemListDTO>();
	ItemListDTO delDto = new ItemListDTO();

	public String execute() throws SQLException{
		session.put("itemId", deleteNumList);
		String[] ar = deleteNumList.split(",");
		for(int i = 0; i < ar.length; i++) {
			ItemListDTO dto = new ItemListDTO();
			dto = dao.deleteSelect(ar[i]);
			deleteList.add(dto);
		}
		delDto.setDeleteList(deleteList);
		System.out.println();

		String result = SUCCESS;
		return result;
	}

	public String getDeleteNum() {
		return this.deleteNum;
	}
	public void setDeleteNum(String deleteNum) {
		this.deleteNum = deleteNum;
	}

	public String getDeleteNumList() {
		return this.deleteNumList;
	}
	public void setDeleteNumList(String deleteNumList) {
		this.deleteNumList = deleteNumList;
	}

	public List<ItemListDTO> getDeleteList() {
		return deleteList;
	}
	public void setDeleteList(List<ItemListDTO> deleteList) {
		this.deleteList = deleteList;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
