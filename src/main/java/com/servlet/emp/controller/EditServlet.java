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

@WebServlet("/edit")
public class EditServlet extends HttpServlet{
	
	EmployeeDAOImpl edoDaoImpl=new EmployeeDAOImpl();

	 @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  int empId=Integer.parseInt(req.getParameter("eid"));
	   
	  
	  Employee employee=edoDaoImpl.findEmployee(empId);
	  
	  if(employee!=null) {
		  req.setAttribute("employee",employee);
		  System.out.println(employee.getName());
		RequestDispatcher rDispatcher=req.getRequestDispatcher("edit.jsp");
		  rDispatcher.forward(req, resp);
	  }
	}
}
