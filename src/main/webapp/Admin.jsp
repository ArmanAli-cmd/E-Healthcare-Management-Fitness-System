<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.connect.DbConnect" %>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

boolean status = DbConnect.checkLogin(username, password); 
if(status == true)
{
		response.sendRedirect("AdminDashboard.jsp");
	
}
else
{
	response.sendRedirect("AdminLogin.html");
}

%>