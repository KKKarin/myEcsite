package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	List<ItemListDTO> itemList = new ArrayList<ItemListDTO>();
	ItemListDAO dao = new ItemListDAO();
	ItemListDTO dto = new ItemListDTO();

	public String execute() throws SQLException {

		itemList = dao.select();

		String result = SUCCESS;
		return result;
	}

	public List<ItemListDTO> getItemList() {
		return itemList;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
