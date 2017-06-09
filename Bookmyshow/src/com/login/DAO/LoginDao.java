package com.login.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.login.bean.*;
import com.login.util.*;

public class LoginDao {
	public String authenticateUser(LoginBean loginBean) {
        String email =loginBean.getemail();
		String password = loginBean.getpassword();

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String email1 = "";
		String password1 = "";

		try {
			con = DBConnection.createConnection(); 
			statement = con.createStatement(); 
											
			resultSet = statement.executeQuery("select email,password from register");
			while (resultSet.next()) 
										
			{
				email1 = resultSet.getString("email"); 
				password1 = resultSet.getString("password");

				if (email1.equals(email) && password1.equals(password)) {
					return "SUCCESS";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Invalid user credentials";
	}
}
