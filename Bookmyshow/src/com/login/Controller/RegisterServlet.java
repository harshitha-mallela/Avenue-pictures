
package com.login.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.bean.RegisterBean;
import com.login.DAO.RegisterDao;
import com.login.DAO.*; 


/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
         String password = request.getParameter("password");
         RegisterBean registerBean = new RegisterBean();
       
         registerBean.setemail(email);
         registerBean.setusername(username);
         registerBean.setpassword(password);
         RegisterDao registerDao = new RegisterDao();
         
   
         String userRegistered = registerDao.registerUser(registerBean);
         
         if(userRegistered.equals("SUCCESS"))  
         {
         request.getRequestDispatcher("/login.jsp").forward(request, response);
         }
         else  
         {
         request.setAttribute("errMessage", userRegistered);
         request.getRequestDispatcher("/signup.jsp").forward(request, response);
         }
         }
    }
