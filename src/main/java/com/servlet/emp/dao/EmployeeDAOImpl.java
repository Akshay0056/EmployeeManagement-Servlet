package com.servlet.emp.dao;

 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.oracle.wls.shaded.org.apache.xml.utils.ListingErrorHandler;
import com.servlet.emp.dto.Employee;
import com.servlet.emp.util.GetConnect;

public class EmployeeDAOImpl implements EmployeeDAO {

    @Override
    public boolean registerEmployee(Employee emp) {
    boolean  isdone=false;
    try {
 	   Connection con= GetConnect.getConnect();
		String query="insert into details values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setInt(1,emp.getEmp_Id());
		ps.setString(2,emp.getName());
		ps.setString(3,emp.getDept());
		ps.setDouble(4,emp.getSalary());
		ps.setInt(5,emp.getPhone_No());
		ps.setString(6,emp.getEmail());
		ps.setString(7,emp.getPassword());
		
		int row  =ps.executeUpdate();
		if(row>0) {
			return true;
			
		}
          
    }
		    catch (SQLException e) {
				e.printStackTrace();
			}

        return  isdone; 
    }

	@Override
	public Employee loginEmployee(String Email,String password) {
		Employee emp=null;
		 
	 
		 try(Connection con=GetConnect.getConnect();
				 PreparedStatement ps=con.prepareStatement("select * from details where email=? and password=?")) {
			 
			 ps.setString(1,Email);
			 ps.setString(2,password);
			 
			 ResultSet res=ps.executeQuery();
			 if(res.next()) {
				  emp=new Employee(
						  res.getInt("id"),
						  res.getString("name"),
						  res.getString("dept"),
						  res.getDouble("salary"),
						  res.getInt("phone"),
						  res.getString("email"),
						  res.getString("password")	);
				   
	            } else {
	            	
	                 
	            }
			 
			
			 
		} catch (Exception e) {
			 e.printStackTrace();
		}
		 System.out.println(emp);
		return emp;
	}

	@Override
	public List<Employee> getEmployee() {
		
	  List<Employee> ls=new ArrayList<>();
		 Employee emp=null;
			Connection con=	 GetConnect.getConnect();
			    try {
					PreparedStatement ps= con.prepareStatement("select * from details");
				ResultSet rs=	ps.executeQuery();
					while(rs.next()) {
					emp =new Employee( rs.getInt("id"),
							rs.getString("name"),
							rs.getString("dept"),
							rs.getDouble("salary"),
							rs.getInt("phone"),
							rs.getString("email"),
							 rs.getString("password")
							 
						 
							);
					  ls.add(emp);
							 
							
						
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		return ls;
	}

	@Override
	public boolean deleteEmployee(int eid) {
		Connection con=GetConnect.getConnect();
		try {
			PreparedStatement pStatement=con.prepareStatement("delete from details where id=?");
			
			pStatement.setInt(1, eid);
		int res=pStatement.executeUpdate();
		if(res>0) {
			return true;
		}
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Employee findEmployee(int eid) {
		 Connection connection=GetConnect.getConnect();
		 Employee employee=null;
	try {
		PreparedStatement ps= connection.prepareStatement("select * from details where id=?");
		ps.setInt(1, eid);
	ResultSet rs =ps.executeQuery();
	
	if(rs.next()) {
		
		employee =new Employee(rs.getInt("id"),
				rs.getString("name"),
				rs.getString("dept"),
				rs.getDouble("salary"),
				rs.getInt("phone"),
				rs.getString("email"),
				 rs.getString("password"));
		return employee;
	}
	  
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return null;
	}

	@Override
	public boolean updateEmployee(Employee emp) {
		 String updateEmpString="Update details set name=?,dept=?,salary=?,phone=?,email=?,password=? where id=?";
		 Connection con=GetConnect.getConnect();
			try {
				PreparedStatement pStatement=con.prepareStatement(updateEmpString);
				
				pStatement.setString(1,emp.getName());
				pStatement.setString(2,emp.getDept());
				pStatement.setDouble(3,emp.getSalary());
				pStatement.setInt(4,emp.getPhone_No());
				pStatement.setString(5,emp.getEmail());
				pStatement.setString(6,emp.getPassword());
				pStatement.setInt(7,emp.getEmp_Id());
				
				int count=pStatement.executeUpdate();
				if(count>0) {
				return true;
				}
				
				
			}
				catch (SQLException e) {
					 
					e.printStackTrace();
				}	
		 
		 
		return false; 
	}

	 
	 
}
