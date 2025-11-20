package com.servlet.emp.dto;

public class Employee {
    private int emp_Id;
    private String name;
    private String dept;
    private double salary;
    private int phone_No;
    private String email;
    private String password;
    
//    public Employee() {
//    	
//    }
     

    public int getEmp_Id() {
        return emp_Id;
    }

    public Employee(int emp_Id, String name, String dept, double salary, int phone_No, String email, String password) {
	super();
	this.emp_Id = emp_Id;
	this.name = name;
	this.dept = dept;
	this.salary = salary;
	this.phone_No = phone_No;
	this.email = email;
	this.password = password;
}

	public void setEmp_Id(int emp_Id) {
        this.emp_Id = emp_Id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getPhone_No() {
        return phone_No;
    }

    public void setPhone_No(int phone_No) {
        this.phone_No = phone_No;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
