package com.login.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.DAO.ScheduleDao;
import com.login.bean.ScheduleBean;

/**
 * Servlet implementation class ScheduleServlet
 */
@WebServlet("/ScheduleServlet")
public class ScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScheduleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String date = request.getParameter("date");
		String time = request.getParameter("time");
        String movie = request.getParameter("movie");
        
        ScheduleBean scheduleBean = new ScheduleBean();

	    scheduleBean.setdate(date);
		scheduleBean.settime(time);
		scheduleBean.setmovie(movie);
		
		ScheduleDao scheduleDao = new ScheduleDao();
		String userValidate = scheduleDao.authenticateUser(scheduleBean);
		if(userValidate.equals("SUCCESS")) {
			HttpSession hs = request.getSession();
			String email = (String)hs.getAttribute("email");
            hs.setAttribute("date",date);
		    hs.setAttribute("time", time);
            hs.setAttribute("movie", movie);
   
			request.getRequestDispatcher("/layout.jsp").forward(request, response);
		}else {
			request.setAttribute("errMessage", userValidate);
			request.getRequestDispatcher("/ont1.jsp").forward(request, response);
		}

	}

}