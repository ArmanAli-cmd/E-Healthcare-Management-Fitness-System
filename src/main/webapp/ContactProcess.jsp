<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact process</title>
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String occupation=request.getParameter("occupation");
String message=request.getParameter("message");

RequestDispatcher dispatcher = null;

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Arman@786");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into contact(name,email,mobile,occupation,message)values('"+name+"','"+email+"','"+mobile+"','"+occupation+"','"+message+"')");
dispatcher = request.getRequestDispatcher("Home.jsp");
if(i>0){
	request.setAttribute("status", "success");
}
else{
	request.setAttribute("status", "failed");
}
dispatcher.forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>