package com.login.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.DAO.LayoutDao;
import com.login.DAO.RegisterDao;
import com.login.DAO.ScheduleDao;
import com.login.bean.LayoutBean;
import com.login.bean.LoginBean;
import com.login.bean.MovieBean;
import com.login.bean.RegisterBean;
import com.login.bean.ScheduleBean;

/**
 * Servlet implementation class LayoutServlet
 */
@WebServlet("/LayoutServlet")
public class LayoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LayoutServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String seats[] = request.getParameterValues("seat");
		if (seats != null) {
			System.out.println("seats are: ");
			for (String seat : seats) {
				System.out.println(seat);

				LayoutBean layoutBean = new LayoutBean();
				MovieBean movieBean = new MovieBean();
				layoutBean.setSeat(seat);
				LayoutDao layoutDao = new LayoutDao();

				String userRegistered = layoutDao.registerUser(layoutBean,request,movieBean);
				if (userRegistered.equals("SUCCESS")) {
					HttpSession hs = request.getSession();
					hs.setAttribute("seat", seat);
					request.getRequestDispatcher("/Booking.jsp").forward(request, response);
				} else {
					request.setAttribute("errMessage", userRegistered);
					request.getRequestDispatcher("/ont1.jsp").forward(request, response);
				}
			}
		}
	}
}