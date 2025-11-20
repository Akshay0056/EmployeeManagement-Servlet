package com.servlet.emp.dao;

import java.util.List;

import com.servlet.emp.dto.Employee;
 

public interface EmployeeDAO {
  boolean registerEmployee(Employee emp);
  Employee loginEmployee( String email,String password);
  List<Employee>  getEmployee();
  boolean deleteEmployee(int eid);
  Employee findEmployee(int eid);
  boolean updateEmployee(Employee emp);
    
  
}
