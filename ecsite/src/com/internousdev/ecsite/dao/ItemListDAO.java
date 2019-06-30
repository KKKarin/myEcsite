package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.internousdev.ecsite.dto.ItemListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class ItemListDAO {

	public List<ItemListDTO> select() throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		List<ItemListDTO> itemList = new ArrayList<ItemListDTO>();
		String sql = "select * from item_info_transaction";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				ItemListDTO dto = new ItemListDTO();
				dto.setItemId(rs.getInt("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getInt("item_price"));
				dto.setItemStock(rs.getInt("item_stock"));
				dto.setItemTime(rs.getString("insert_date"));
				itemList.add(dto);
			}
			Collections.reverse(itemList);
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}

		return itemList;

	}

}
