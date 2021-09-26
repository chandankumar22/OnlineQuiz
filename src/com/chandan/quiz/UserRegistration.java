package com.chandan.quiz;

import java.sql.*;
import java.util.ArrayList;

public class UserRegistration {

	private String name, email, password;
	private Connection con;
	private PreparedStatement pst;
	private ResultSet res;

	public UserRegistration() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hr", "ck");

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	public UserRegistration(String name, String email, String password) {
		this.name = name;
		this.email = email;
		this.password = password;

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hr", "ck");
			insertUser();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	public void insertUser() throws SQLException {
		pst = con.prepareStatement("insert into quiz_users values(?,?,?)");
		pst.setString(1, name);
		pst.setString(2, password);
		pst.setString(3, email);
		pst.executeQuery();

	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList validateUser(String email, String password) {
		String pass;
		ArrayList al = new ArrayList();
		try {
			pst = con.prepareStatement("select name,password from quiz_users where email='" + email + "'");
			// pst.setString(1, email);
			res = pst.executeQuery();
			if (res.next()) {
				pass = res.getString("password");
				if (pass.equals(password)) {
					al.add(true);
					al.add(res.getString("name"));
					return al;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		al.add(false);
		al.add(null);
		return al;
	}

	public ResultSet quizQues(String query) {

		try {
			pst = con.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			res = pst.executeQuery();
			// System.out.println("QUERY IS "+query+" "+res.next());
			return res;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public int totalQuesNumber(String query) {

		try {
			pst = con.prepareStatement(query);
			res = pst.executeQuery();
			res.next();
			int num = res.getInt(1);
			// System.out.println("QUERY IS "+query+" "+res.next());
			return num;
		} catch (SQLException e) {
			System.out.println("exception aa gaya  " + e.getMessage());
			e.printStackTrace();
		}
		return 0;
	}

}
