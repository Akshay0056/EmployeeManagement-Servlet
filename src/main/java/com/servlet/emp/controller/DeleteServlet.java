package com.servlet.emp.controller;

import java.io.IOException;

import com.servlet.emp.dao.EmployeeDAO;
import com.servlet.emp.dao.EmployeeDAOImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		EmployeeDAOImpl ed=new EmployeeDAOImpl();
	 
		int empid=Integer.parseInt(req.getParameter("eid"));
		 
	boolean isDelected=	ed.deleteEmployee(empid);
		 if(isDelected) {
			  resp.sendRedirect("view");
		 }
		 
		   
	}

}
