package Handler;


import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Database.DB;
import Model.Users;

public class DataHandler {

	private static Connection conn;

	public DataHandler() {
		conn = DB.getConnection();
	}

	// Insert Users
	public void addUser(Users users) {
		try {
			String sql = "INSERT INTO users(FullName,Address,Nationality,NIC,Mobile) VALUES(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, users.getFullName());
			ps.setString(2, users.getAddress());
			ps.setString(3, users.getNationality());
			ps.setString(4, users.getNIC());
			ps.setString(5, users.getMobile());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Retrieve Data
	public static List<Users> getAllRecords() {
		List<Users> users = new ArrayList<Users>();
		try {
			Connection con = DB.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM users;");
			java.sql.ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String Id = rs.getString("Id");
				String FullName = rs.getString("FullName");
				String Address = rs.getString("Address");
				String Nationality = rs.getString("Nationality");
				String NIC = rs.getString("NIC");
				String Mobile = rs.getString("Mobile");

				users.add(new Users(Id, FullName, Address, Nationality, NIC, Mobile));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return users;
	}

	// Edit Users
	public void editUser(Users users) {
		try {
			String sql = ("Update users SET FullName=?,Address=?,Nationality=?,NIC=?,Mobile=? WHERE id=?");
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, users.getFullName());
			ps.setString(2, users.getAddress());
			ps.setString(3, users.getNationality());
			ps.setString(4, users.getNIC());
			ps.setString(5, users.getMobile());
			ps.setString(6, users.getId());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		}
	}


//Delete Users
	public void removeUser(int id) {
		try {
			String sql = "DELETE FROM users WHERE Id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
