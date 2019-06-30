package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private int count;
	private String pay;

	public String execute() {
		String result = SUCCESS;
		//sessionにいれる
		session.put("count", count);
		//sessionからcountをだしてintに変換
		int intCount = Integer.parseInt(session.get("count").toString());
		//sessionから商品の値段をだしてintに変換
		int intPrice = Integer.parseInt(session.get("buyItem_price").toString());
		session.put("total_price", intCount * intPrice);
		String payment;

		if(pay.equals("1")) {
			payment = "現金払い";
			session.put("pay", payment);
		} else {
			payment = "クレジットカード";
			session.put("pay", payment);
		}

		return result;
	}

	//getterは次のjsp画面で値を表示する際に必要。
	//setterでfieldからの値を上書き

	//count====================
	public void setCount(int count) {
		this.count = count;
	}

	//pay=====================
	public void setPay(String pay) {
		this.pay = pay;
	}

	//session===================
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
