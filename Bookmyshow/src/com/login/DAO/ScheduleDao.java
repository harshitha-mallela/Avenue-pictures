package com.login.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.login.bean.*;
import com.login.util.*;

public class ScheduleDao {
	public String authenticateUser(ScheduleBean scheduleBean) {
        String date = scheduleBean.getdate();
		String time = scheduleBean.gettime();
		String movie = scheduleBean.getmovie();

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String date1 = " ";
		String time1 = " ";
        String movie1 = " ";
        int movie_id1;        
		try {
			con = DBConnection.createConnection(); 
			statement = con.createStatement(); 
											
			resultSet = statement.executeQuery("select schedule.schedule_date,schedule.movie_id,movie_name,schedule.schedule_time from schedule join movie on schedule.movie_id = movie.movie_id");

			while (resultSet.next()) 
										
			{
				date1 = resultSet.getString("schedule_date"); 
				time1 = resultSet.getString("schedule_time");
				movie1 = resultSet.getString("movie_name");
				movie_id1 = resultSet.getInt("movie_id");
				
				
                 
				if (time1.equals(time) && movie1.equals(movie)) {
					return "SUCCESS";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Invalid user credentials";
	}
}
