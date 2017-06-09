package com.login.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.DAO.LoginDao;
import com.login.bean.LoginBean;

/**
 * Servlet implementation class Login1Servlet
 */
@WebServlet("/Login1Servlet")
public class Login1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        //response.getWriter().append("Served at: ").append(request.getContextPath());
	  doPost(request,response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		LoginBean loginBean = new LoginBean();

		loginBean.setemail(email);
		loginBean.setpassword(password);
        
		LoginDao loginDao = new LoginDao();

		String userValidate = loginDao.authenticateUser(loginBean);

		if (userValidate.equals("SUCCESS")){
			HttpSession hs = request.getSession();
		     hs.setAttribute("email", email);
		     //request.setAttribute("movie_id",movie_id);
		     request.getRequestDispatcher("MovieServlet").forward(request, response);
			
			
		} else {
			request.setAttribute("errMessage", userValidate);
			request.getRequestDispatcher("/ont1.jsp").forward(request, response);
		}
	}
}