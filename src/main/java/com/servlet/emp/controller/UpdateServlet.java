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

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	
	 EmployeeDAOImpl employeeDAOImpl =null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		 String dept=req.getParameter("dept");
		 double salary= Double.parseDouble(req.getParameter("salary"));
		 int phone=Integer.parseInt(req.getParameter("phone"));
		 String email=req.getParameter("email");
		 String pass=req.getParameter("password");
		
		
		  Employee emp=new Employee(id, name, dept, salary, phone, email, pass);
		   employeeDAOImpl=new EmployeeDAOImpl( );
		  boolean res= employeeDAOImpl.updateEmployee(emp);
		  
		  req.setAttribute("emp", emp);
		  if ( res) {
			  resp.sendRedirect("view");	    
			} else {
			    resp.getWriter().println("Failed to update Employee.");
			}
		   
	}

}
