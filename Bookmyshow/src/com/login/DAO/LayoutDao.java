package com.login.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.login.bean.LayoutBean;
import com.login.bean.LoginBean;
import com.login.bean.MovieBean;
import com.login.util.DBConnection;
public class LayoutDao {
    public String registerUser(LayoutBean layoutBean,HttpServletRequest request,MovieBean movieBean)
     {
    HttpSession hs = request.getSession();
     String email = (String)hs.getAttribute("email");
     //String date = (String)hs.getAttribute("date");
     //String time = (String)hs.getAttribute("time");
     //String movie = (String)hs.getAttribute("movie");
     
     String seat_id2 = layoutBean.getSeat();
     int movie_id1 = ;
     
 
     Connection con = null;
     
     PreparedStatement preparedStatement = null;
     
     try
     {
     con = DBConnection.createConnection();
     String query = "insert into booking2(email,seat_id2,movie_id1)values(?,?,?)";
     preparedStatement = con.prepareStatement(query);
     preparedStatement.setString(1, email);
     preparedStatement.setString(2, seat_id2);
     preparedStatement.setInt(3,movie_id1);
     //preparedStatement.setString(4,theatre_id);
     //preparedStatement.setString(5, seat_id);
     
     System.out.println("sddd");
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