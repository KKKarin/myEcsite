package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.ItemListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class ItemListDeleteDAO {
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();

	public ItemListDTO deleteSelect(String id) throws SQLException {
		ItemListDTO dto = new ItemListDTO();
		String sql = "SELECT * FROM item_info_transaction WHERE id = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				dto.setItemId(rs.getInt("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getInt("item_price"));
				dto.setItemStock(rs.getInt("item_stock"));
				dto.setItemTime(rs.getString("insert_date"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public int delete(String id) throws SQLException {
		String sql = "DELETE FROM  item_info_transaction WHERE id = ?";
		int rs = 0;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return rs;
	}

}
