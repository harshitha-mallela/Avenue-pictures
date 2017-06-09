package com.login.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.login.bean.RegisterBean;
import com.login.util.DBConnection;
public class RegisterDao {
    public String registerUser(RegisterBean registerBean)
     {
     String email = registerBean.getemail();
     String username = registerBean.getusername();
     String password =  registerBean.getpassword();
     Connection con = null;
     PreparedStatement preparedStatement = null;
     
     try
     {
     con = DBConnection.createConnection();
     String query = "insert into register(email,username,password) values (?,?,?)"; //Insert user details into the table 'USERS'
     preparedStatement = con.prepareStatement(query);
     preparedStatement.setString(1, email);
     preparedStatement.setString(2, username);
     preparedStatement.setString(3, password);
 
     
     int i= preparedStatement.executeUpdate();
     
     if (i!=0) 
     return "SUCCESS";
     }
     catch(SQLException e)
     {
     e.printStackTrace();
     }
     return "Something went wrong there..!"; 
     }
    }