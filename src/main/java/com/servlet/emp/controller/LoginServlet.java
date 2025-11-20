package com.servlet.emp.controller;

import java.io.IOException;

import com.servlet.emp.dao.EmployeeDAOImpl;
import com.servlet.emp.dto.Employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		
		 EmployeeDAOImpl eDaoImpl=new EmployeeDAOImpl();
		 
		 Employee emp= eDaoImpl.loginEmployee(email, pass);
		 
		
		try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		if(emp!=null) {
			
			HttpSession session=req.getSession();
			session.setAttribute("emp", emp);
		 
		RequestDispatcher rDispatcher=req.getRequestDispatcher("DashBoard.jsp");
			rDispatcher.forward(req, resp);
			
		}else {
			
			 resp.setContentType("text/html");
			 resp.getWriter().println("<script type=\"text/javascript\">");
			 resp.getWriter().println("alert('Invalid email or password! Please try again.');");
			 resp.getWriter().println("window.location.href='login.jsp';");
			 resp.getWriter().println("</script>");
			 
			 
		}
		
		
	}

}
