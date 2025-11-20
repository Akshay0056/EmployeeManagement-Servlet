<%@ page import="com.servlet.emp.dto.Employee" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="Nav.jsp" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management | CareerConnect</title>

<style>
  /* ===== RESET ===== */
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    font-family: "Poppins", sans-serif;
    background: #f8fafc;
    color: #1e293b;
  }

  /* ===== NAVBAR ===== */
  

  /* ===== PAGE HEADER ===== */
  .header {
    text-align: center;
    padding: 40px 20px;
    background: linear-gradient(135deg, #0ea5e9, #2563eb);
    color: white;
  }

  .header h1 {
    font-size: 2rem;
    margin-bottom: 10px;
  }

  .header p {
    font-size: 1rem;
    opacity: 0.9;
  }

  /* ===== TABLE ===== */
  table {
    width: 90%;
    margin: 40px auto;
    border-collapse: collapse;
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    background: white;
    border-radius: 10px;
    overflow: hidden;
  }

  th, td {
    padding: 15px;
    text-align: center;
  }

  th {
    background: #0f172a;
    color: white;
    font-weight: 600;
  }

  tr:nth-child(even) {
    background: #f1f5f9;
  }

  tr:hover {
    background: #e0f2fe;
    transition: 0.3s;
  }

  /* ===== ACTION LINKS ===== */
  a.action-btn {
    text-decoration: none;
    color: white;
    background: #2563eb;
    padding: 8px 16px;
    border-radius: 20px;
    margin: 0 5px;
    transition: background 0.3s ease;
  }

  a.action-btn:hover {
    background: #1e40af;
  }

  a.delete-btn {
    background: #dc2626;
  }

  a.delete-btn:hover {
    background: #b91c1c;
  }

  /* ===== NO RECORDS ===== */
  .no-records {
    text-align: center;
    color: #475569;
    font-size: 1.4rem;
    margin-top: 80px;
  }

  /* ===== FOOTER ===== */
  footer {
    background: #0f172a;
    color: white;
    text-align: center;
    padding: 15px;
    margin-top: 60px;
    font-size: 0.9rem;
  }
</style>
</head>
<body>

 
<!-- ===== HEADER ===== -->
<div class="header">
  <h1>Employee Records</h1>
  <p>Manage, edit, or remove employees efficiently</p>
</div>

<!-- ===== MAIN CONTENT ===== -->
<%
  List<Employee> ls = (List<Employee>) request.getAttribute("list");
  if (ls != null && !ls.isEmpty()) {
%>
  <table>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Dept</th>
      <th>Salary</th>
      <th>Phone</th>
      <th>Email</th>
      <th>Action</th>
    </tr>

    <% for (Employee emps : ls) { %>
    <tr>
      <td><%= emps.getEmp_Id() %></td>
      <td><%= emps.getName() %></td>
      <td><%= emps.getDept() %></td>
      <td><%= emps.getSalary() %></td>
      <td><%= emps.getPhone_No() %></td>
      <td><%= emps.getEmail() %></td>
      <td>
        <a href="edit?eid=<%= emps.getEmp_Id() %>" class="action-btn">Edit</a>
        <a href="delete?eid=<%= emps.getEmp_Id() %>" class="action-btn delete-btn">Delete</a>
      </td>
    </tr>
    <% } %>
  </table>

<% } else { %>
  <div class="no-records">
    <h2>There are no records available.</h2>
  </div>
<% } %>

<!-- ===== FOOTER ===== -->
 

</body>
</html>
