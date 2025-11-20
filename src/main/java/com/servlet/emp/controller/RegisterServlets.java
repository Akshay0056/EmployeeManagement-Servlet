package com.servlet.emp.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.servlet.emp.dao.EmployeeDAOImpl;
import com.servlet.emp.dto.Employee;
import com.servlet.emp.util.GetConnect;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Register")

public class RegisterServlets extends HttpServlet   {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
 
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		 String dept=req.getParameter("dept");
		 double salary= Double.parseDouble(req.getParameter("salary"));
		 int phone=Integer.parseInt(req.getParameter("password"));
		 String email=req.getParameter("email");
		 String pass=req.getParameter("password");
		
		
		   Employee emp=new Employee(id, name, dept, salary, phone, email, pass);
		   
		  EmployeeDAOImpl employeeDAOImpl=new EmployeeDAOImpl( );
		   
		 boolean res= employeeDAOImpl.registerEmployee(emp);
		 
		if ( res) {
		   RequestDispatcher rd= req.getRequestDispatcher("login.jsp");
		   rd.forward(req, resp);		    
		} else {
		    resp.getWriter().println("Failed to Register Employee.");
		}

		
	}  
		
		 
 
	}

 