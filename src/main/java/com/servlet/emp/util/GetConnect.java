package com.servlet.emp.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 

public class GetConnect {
  
    static Connection con = null;
    
    public static Connection getConnect() {
        try {
            // Load MySQL driver
             Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish connection
            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/emp_mgrt?user=root&password=akshay"
            );
            
            System.out.println("✅ Database connected successfully!");
        } catch (ClassNotFoundException e) {
            System.out.println("❌ MySQL Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("❌ Database connection failed!");
            e.printStackTrace();
        }
        return con;
    }
}
