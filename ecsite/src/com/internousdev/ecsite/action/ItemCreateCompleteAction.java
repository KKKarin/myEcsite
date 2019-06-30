package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemCreateCompleteAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;

	public String execute() throws SQLException {

		ItemCreateCompleteDAO dao = new ItemCreateCompleteDAO();
		int priceInt = Integer.parseInt(session.get("itemPrice").toString());
		int itemInt = Integer.parseInt(session.get("itemStock").toString());

		dao.insertItem(session.get("itemName").toString(), priceInt, itemInt);
		String result = SUCCESS;
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
