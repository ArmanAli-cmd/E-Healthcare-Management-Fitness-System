<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.connect.DbConnect" %>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");

boolean status = DbConnect.doctorLogin(email, password); 
if(status == true)
{
		response.sendRedirect("DoctorDashboard.jsp");
	
}
else
{
	response.sendRedirect("UserLogin.jsp");
}

%>