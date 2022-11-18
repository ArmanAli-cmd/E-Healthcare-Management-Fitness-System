<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%
String name=request.getParameter("name");
String age=request.getParameter("age");
String image=request.getParameter("image");
String sex=request.getParameter("sex");
String blood_group=request.getParameter("blood_group");
String martial=request.getParameter("martial");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String password=request.getParameter("password");
String address=request.getParameter("address");
String city=request.getParameter("city");
String pincode=request.getParameter("pincode");
String state=request.getParameter("state");
String country=request.getParameter("country");
String p_name=request.getParameter("p_name");
String relation=request.getParameter("relation");
String p_address=request.getParameter("p_address");
String p_pincode=request.getParameter("p_pincode");
String p_city=request.getParameter("p_city");
String p_state=request.getParameter("p_state");

RequestDispatcher dispatcher = null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Arman@786");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into patient(name,age,image,sex,blood_group,martial,mobile,email,password,address,city,pincode,state,country,p_name,relation,p_address,p_pincode, p_city,p_state)values('"+name+"','"+age+"','"+image+"','"+sex+"','"+blood_group+"','"+martial+"','"+mobile+"','"+email+"','"+password+"','"+address+"','"+city+"','"+pincode+"','"+state+"','"+country+"','"+p_name+"','"+relation+"','"+p_address+"','"+p_pincode+"','"+p_city+"','"+p_state+"')");
dispatcher = request.getRequestDispatcher("PatientRegistration.jsp");
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