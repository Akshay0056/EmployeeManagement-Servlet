package com.servlet.emp.controller;

import java.io.IOException;
import java.util.List;

import com.servlet.emp.dao.EmployeeDAOImpl;
import com.servlet.emp.dto.Employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
 
@WebServlet("/view")
public class ViewUser extends  HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(false);
		
		if(session==null || session.getAttribute("emp")==null) {
			
			resp.sendRedirect("login.jsp");
			return;
		}
		
		
		
		
		 EmployeeDAOImpl eImpl = new EmployeeDAOImpl();
	 
		try {
            // ✅ Step 3: Fetch all employees from database
            List<Employee> employees = eImpl.getEmployee();

            // ✅ Step 4: Store employee list in request scope
            req.setAttribute("list", employees);

            // ✅ Step 5: Forward data to JSP page
            RequestDispatcher rd = req.getRequestDispatcher("view.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            // If an error occurs, redirect to an error page or show message
            resp.setContentType("text/html");
            resp.getWriter().println("<h3 style='color:red;text-align:center;'>Error fetching employee data!</h3>");
        }
	}
	 

}
