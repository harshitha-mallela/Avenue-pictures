package com.login.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.login.bean.MovieBean;

public class MovieDaoImpl implements MovieDao{
	@Override
	public boolean insert(MovieBean mb) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow","root","root");
			PreparedStatement p =con.prepareStatement("insert into movie3(movie_name,movie_id) values(?,?)");
			p.setInt(2, mb.getMovie_id());
			p.setString(1, mb.getMovie_name());
			int i = p.executeUpdate();
			if(i!= 0)
				return true;
			else
				return false;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}


	public ArrayList<MovieBean> getAllMovies() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow","root","root");
			PreparedStatement p =con.prepareStatement("select * from movie5");
			ResultSet rs = p.executeQuery();
			ArrayList<MovieBean> movieList = new ArrayList<MovieBean>();
			while(rs.next()){
				MovieBean lb =new MovieBean(0,null);
				lb.setMovie_id(rs.getInt(1));
				lb.setMovie_name(rs.getString(2));
				movieList.add(lb);

			}
			return movieList;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}

	
	



