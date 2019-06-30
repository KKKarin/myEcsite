package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDeleteDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	List<ItemListDTO> deleteList = new ArrayList<ItemListDTO>();
	ItemListDTO dto = new ItemListDTO();

	public String execute() throws SQLException {

		String result;
		int res = 0;
		String list = session.get("itemId").toString();
		String[] ar = list.split(",");
		//System.out.println(list);
		//System.out.println(dto.getDeleteList());

		for(int i = 0; i < ar.length; i++) {
			ItemListDeleteDAO dao = new ItemListDeleteDAO();
			//int id = deleteList.get(ar[i]).getItemId();
			//String itemName = deleteList.get(i).getItemName();
			res = dao.delete(ar[i]);
			//System.out.println(ar[i]);
		}

		if(0 <= res) {
			result = SUCCESS;
		} else {
			result = ERROR;
		}

		return result;
	}

	public List<ItemListDTO> getDeleteList() {
		return this.deleteList;
	}
	public void setDeleteList(List<ItemListDTO> deleteList) {
		this.deleteList = deleteList;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
