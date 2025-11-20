 <%@page import="com.servlet.emp.dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="Nav.jsp" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<%

Employee emp=(Employee)session.getAttribute("emp");

if(emp==null){
	response.sendRedirect("login.jsp");
	return;
}
%>
<br>
<h1>Welcome <%= emp.getName() %> to dashboard</h1>

</body>
</html>