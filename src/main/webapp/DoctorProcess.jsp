<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String birthday=request.getParameter("birthday");
String photo=request.getParameter("photo");
String gender=request.getParameter("gender");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String password=request.getParameter("password");
String address=request.getParameter("address");
String city=request.getParameter("city");
String pincode=request.getParameter("pincode");
String state=request.getParameter("state");
String country=request.getParameter("country");
String degree=request.getParameter("degree");
String specialist=request.getParameter("specialist");
String fees=request.getParameter("fees");
String schedulefrom=request.getParameter("schedulefrom");
String scheduleto=request.getParameter("scheduleto");
RequestDispatcher dispatcher = null;

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Arman@786");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into doctor(name,birthday,photo,gender,mobile,email,password,address,city,pincode,state,country,degree,specialist,fees,schedulefrom, scheduleto)values('"+name+"','"+birthday+"','"+photo+"','"+gender+"','"+mobile+"','"+email+"','"+password+"','"+address+"','"+city+"','"+pincode+"','"+state+"','"+country+"','"+degree+"','"+specialist+"','"+fees+"','"+schedulefrom+"','"+scheduleto+"')");
dispatcher = request.getRequestDispatcher("DoctorRegistration.jsp");
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